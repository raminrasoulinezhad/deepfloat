// Ramin

// orginally was a clone of LogMultiplyAdd.sv
module FloatMultiplyAdd #(parameter EXP_IN_A=3,
                        parameter FRAC_IN_A=2,
                        parameter EXP_IN_B=3,
                        parameter FRAC_IN_B=2,
                        parameter TRAILING_BITS=2,
                        parameter ACC_DESIRED = 32,
                        parameter ACC_EXTRA_BIT = 8,
                        parameter OVERFLOW_DETECTION=0)
  (Float.InputIf a,
   Float.InputIf b,
   Kulisch.InputIf accIn,
   Kulisch.OutputIf accOut,

   input reset,
   input clock);

  localparam EXP_OUT = (EXP_IN_A > EXP_IN_B) ? (EXP_IN_A + 1) : (EXP_IN_B + 1);
  localparam FRAC_OUT = FRAC_IN_A + FRAC_IN_B + 1;

  
  //localparam ACC_FRAC_REQ      =  FRAC_OUT + ( 2**(EXP_OUT-1) ) - 2 ;  
  //localparam ACC_NON_FRAC_REQ  =  1 + ( 2**(EXP_OUT-1) );              
  localparam ACC_FRAC_REQ      =  FRAC_OUT + ( 2**(EXP_IN_A-1)+2**(EXP_IN_B-1) ) - 2;     // mantisa + negative shifts
  localparam ACC_NON_FRAC_REQ  =  1 + 1 + ( 2**(EXP_IN_A-1)+2**(EXP_IN_B-1) );            // sign + implicite one + positive shifts
  
  localparam ACC_TOTAL_REQ     =  ACC_FRAC_REQ + ACC_NON_FRAC_REQ;

  localparam ACC_FRAC      =  ACC_FRAC_REQ;                       
  localparam ACC_NON_FRAC  =  (ACC_DESIRED != 0) ? (ACC_DESIRED - ACC_FRAC_REQ) : (ACC_EXTRA_BIT + ACC_NON_FRAC_REQ);
  localparam ACC_TOTAL     =  ACC_FRAC + ACC_NON_FRAC;
  

  initial begin
    assert(a.EXP == EXP_IN_A);
    assert(a.FRAC == FRAC_IN_A);
    assert(b.EXP == EXP_IN_B);
    assert(b.FRAC == FRAC_IN_B);

    assert(accIn.ACC_NON_FRAC == ACC_NON_FRAC);
    assert(accIn.ACC_FRAC == ACC_FRAC);
    assert(accOut.ACC_NON_FRAC == ACC_NON_FRAC);
    assert(accOut.ACC_FRAC == ACC_FRAC);
  end

  Float #(.EXP(EXP_OUT), .FRAC(FRAC_OUT)) c();

  FloatMultiply #(.EXP_IN_A(EXP_IN_A),
                  .FRAC_IN_A(FRAC_IN_A),
                  .EXP_IN_B(EXP_IN_B),
                  .FRAC_IN_B(FRAC_IN_B),
                  .EXP_OUT(EXP_OUT),
                  .FRAC_OUT(FRAC_OUT),
                  .TRAILING_BITS(TRAILING_BITS))
  mul(.inA(a),
      .inB(b),
      .out(c),
      //.trailingBits(),
      //.stickyBit(),
      //.isNan(),
      .reset(reset),
      .clock(clock));


  // 1. Convert the float number to a signed float
  FloatSigned #(.EXP(EXP_OUT), .FRAC(FRAC_OUT)) floatSigned();

  FloatToFloatSigned  #(.EXP(EXP_OUT),
                        .FRAC(FRAC_OUT),
                        .SIGNED_EXP(EXP_OUT),
                        .SIGNED_FRAC(FRAC_OUT),
                        .SATURATE_MAX(1),
                        .DENORMALS(1))
  floatToSignedFloat (.in(c),
                      .out(floatSigned));




  // 2. Convert the linear float to a linear fixed-point
  Kulisch #(.ACC_NON_FRAC(ACC_NON_FRAC), .ACC_FRAC(ACC_FRAC)) linearFixed();

  FloatSignedToLinearFixed #(.SIGNED_EXP(EXP_OUT),
                             .FRAC(FRAC_OUT),
                             .ACC_NON_FRAC(ACC_NON_FRAC),
                             .ACC_FRAC(ACC_FRAC),
                             .OVERFLOW_DETECTION(OVERFLOW_DETECTION))
  floatToFixed(.in(floatSigned),
               .out(linearFixed));

  // 3. Sum accumulators
  KulischAccumulatorAdd #(.ACC_NON_FRAC(ACC_NON_FRAC),
                          .ACC_FRAC(ACC_FRAC),
                          .OVERFLOW_DETECTION(OVERFLOW_DETECTION))
  add(.a(linearFixed),
      .b(accIn),
      .out(accOut));

endmodule
