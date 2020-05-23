// Ramin

// orginally was a clone of LogMultiplyAdd.sv
module FloatMultiplyAddWithFloat  #(parameter EXP_IN_A=3,
                                    parameter FRAC_IN_A=2,
                                    parameter EXP_IN_B=3,
                                    parameter FRAC_IN_B=2,
                                    parameter TRAILING_BITS=2,
                                    parameter EXP_OUT=5,
                                    parameter FRAC_OUT=8,
                                    parameter OVERFLOW_DETECTION=0)
  (Float.InputIf a,
   Float.InputIf b,
   Float.InputIf accIn,
   Float.OutputIf accOut,

   input reset,
   input clock); 

  initial begin
    assert(a.EXP == EXP_IN_A);
    assert(a.FRAC == FRAC_IN_A);
    assert(b.EXP == EXP_IN_B);
    assert(b.FRAC == FRAC_IN_B);

    assert(accIn.EXP == EXP_OUT);
    assert(accIn.FRAC == FRAC_OUT);
    assert(accOut.EXP == EXP_OUT);
    assert(accOut.FRAC == FRAC_OUT);
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

  // We don't have this IPcore
  //// 3. Sum the linear floats
  //DW_fp_add #(.sig_width(FRAC_OUT),
  //            .exp_width(EXP_OUT),
  //            .ieee_compliance(0))
  //add(.a(accIn.data),
  //    .b(c.data),
  //    .z(accOut.data),
  //    .status(),
  //    // r2ne
  //    .rnd(3'b000));

  FloatAdd  #(.EXP_IN_A(EXP_OUT),
              .FRAC_IN_A(FRAC_OUT),
              .EXP_IN_B(EXP_OUT),
              .FRAC_IN_B(FRAC_OUT),
              .EXP_OUT(EXP_OUT),
              .FRAC_OUT(FRAC_OUT),
              .TRAILING_BITS(TRAILING_BITS))
  add(.inA(accIn),
      .inB(c),
      .subtract(1'b0),
      .out(accOut),
      //.trailingBits(),
      //.stickyBit(),
      //.isNan(),
      .reset(reset),
      .clock(clock));


endmodule
