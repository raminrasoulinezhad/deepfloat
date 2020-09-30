// Systolic PE
module PE_fff #(parameter EXP_IN_A=3,
                parameter FRAC_IN_A=2,
                parameter EXP_IN_B=3,
                parameter FRAC_IN_B=2,
                parameter TRAILING_BITS=2,
                parameter EXP_OUT=5,
                parameter FRAC_OUT=8,
                parameter OVERFLOW_DETECTION=0)
    (input logic [EXP_IN_A+FRAC_IN_A:0] aIn,
    input logic [EXP_IN_B+FRAC_IN_B:0] bIn,
    input logic [EXP_OUT+FRAC_OUT:0] cIn,
    output logic [EXP_IN_A+FRAC_IN_A:0] aOut,
    output logic [EXP_IN_B+FRAC_IN_B:0] bOut,
    output logic [EXP_OUT+FRAC_OUT:0] cOut,
    input enableMul,
    input enableShiftOut,
    input reset,
    input clock);

   localparam W_A = EXP_IN_A + FRAC_IN_A;
   localparam W_B = EXP_IN_B + FRAC_IN_B;
   localparam W_OUT = EXP_OUT + FRAC_OUT;

  logic [EXP_OUT+FRAC_OUT:0] cNew;

  FloatMultiplyAddWithFloat #( .EXP_IN_A(EXP_IN_A),
                               .FRAC_IN_A(FRAC_IN_A),
                               .EXP_IN_B(EXP_IN_B),
                               .FRAC_IN_B(FRAC_IN_B),
                               .TRAILING_BITS(TRAILING_BITS),
                               .EXP_OUT(EXP_OUT),
                               .FRAC_OUT(FRAC_OUT),
                               .OVERFLOW_DETECTION(OVERFLOW_DETECTION))
  pe(.a(aIn),
     .b(bIn),
     .accIn(cOut),
     .accOut(cNew),

     .reset(reset),
     .clock(clock));

  always_ff @(posedge clock) begin
    if (reset) begin
      aOut <= W_A'(1'b0);
      bOut <= W_B'(1'b0);
      cOut <= W_OUT'(1'b0);
    end else if (enableMul) begin
      aOut <= aIn;
      bOut <= bIn;
      cOut <= cNew;
    end else if (enableShiftOut) begin
      cOut <= cIn;
    end
  end
endmodule
