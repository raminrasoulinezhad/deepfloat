// Systolic PE
module PE_ffk #(parameter EXP_IN_A=3,
                parameter FRAC_IN_A=2,
                parameter EXP_IN_B=3,
                parameter FRAC_IN_B=2,
                parameter ACC_DESIRED=32)
   (input logic [EXP_IN_A+FRAC_IN_A:0] aIn,
    input logic [EXP_IN_B+FRAC_IN_B:0] bIn,
    input logic [ACC_DESIRED-1:0] cIn,
    output logic [EXP_IN_A+FRAC_IN_A:0] aOut,
    output logic [EXP_IN_B+FRAC_IN_B:0] bOut,
    output logic [ACC_DESIRED-1:0] cOut,
    input enableMul,
    input enableShiftOut,
    input reset,
    input clock);

   localparam W_A = EXP_IN_A + FRAC_IN_A;
   localparam W_B = EXP_IN_B + FRAC_IN_B;

  logic [ACC_DESIRED-1:0] cNew;

  FloatMultiplyAdd_POC_combinational #(.EXP_IN_A(EXP_IN_A),
                                       .FRAC_IN_A(FRAC_IN_A),
                                       .EXP_IN_B(EXP_IN_B),
                                       .FRAC_IN_B(FRAC_IN_B),

                                       .ACC_DESIRED(ACC_DESIRED))
  pe(.a(aIn),
     .b(bIn),
     .accIn(cOut),
     .accOut(cNew));

  always_ff @(posedge clock) begin
    if (reset) begin
      aOut <= W_A'(1'b0);
      bOut <= W_B'(1'b0);
      cOut <= ACC_DESIRED'(1'b0);
    end else if (enableMul) begin
      aOut <= aIn;
      bOut <= bIn;
      cOut <= cNew;
    end else if (enableShiftOut) begin
      cOut <= cIn;
    end
  end
endmodule
