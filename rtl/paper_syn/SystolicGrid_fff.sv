// The grid of systolic PEs receiving input from the shift registers
// holding a tile of A and B, accumulating the products C

module SystolicGrid_fff #(parameter TILE=32,
                          parameter EXP_IN_A=3,
                          parameter FRAC_IN_A=2,
                          parameter EXP_IN_B=3,
                          parameter FRAC_IN_B=2,
                          parameter TRAILING_BITS=2,
                          parameter EXP_OUT=5,
                          parameter FRAC_OUT=8,
                          parameter OVERFLOW_DETECTION=0)
  (// Next column from A being shifted in
   input logic [EXP_IN_A+FRAC_IN_A:0] aNextIn[0:TILE-1],
   input logic [EXP_IN_B+FRAC_IN_B:0] bNextIn[0:TILE-1],
   output logic [EXP_OUT+FRAC_OUT:0] cNextOut[0:TILE-1],

   input enableMul,
   input enableShiftOut,
   input reset,
   input clock);

  localparam W_OUT = EXP_OUT + FRAC_OUT;

  // The grid of PEs
  logic [EXP_IN_A+FRAC_IN_A:0] aOuts [0:TILE*TILE-1];
  logic [EXP_IN_B+FRAC_IN_B:0] bOuts [0:TILE*TILE-1];
  logic [EXP_OUT+FRAC_OUT:0] cOuts [0:TILE*TILE-1];

  logic [EXP_IN_A+FRAC_IN_A:0] aIns[0:TILE*TILE-1];
  logic [EXP_IN_B+FRAC_IN_B:0] bIns[0:TILE*TILE-1];
  logic [EXP_OUT+FRAC_OUT:0] cIns[0:TILE*TILE-1];

  genvar i;
  genvar j;

  generate
    // row
    for (i = 0; i < TILE; ++i) begin
      // column
      for (j = 0; j < TILE; ++j) begin

        if (i == 0 && j == 0) begin
          always_comb begin
            // row 0, colum 0
            aIns[i * TILE + j] = aNextIn[0];
            bIns[i * TILE + j] = bNextIn[0];
            cIns[i * TILE + j] = W_OUT'(1'b0);
          end
        end else if (j == 0) begin
          always_comb begin
            // each row, column 0
            aIns[i * TILE + j] = aNextIn[i];
            bIns[i * TILE + j] = bOuts[(i - 1) * TILE + j];
            cIns[i * TILE + j] = cOuts[(i - 1) * TILE + j];
          end
        end else if (i == 0) begin
          always_comb begin
            // row 0, each column
            aIns[i * TILE + j] = aOuts[i * TILE + (j - 1)];
            bIns[i * TILE + j] = bNextIn[j];
            cIns[i * TILE + j] = W_OUT'(1'b0);
          end
        end else begin
          always_comb begin
            aIns[i * TILE + j] = aOuts[i * TILE + (j - 1)];
            bIns[i * TILE + j] = bOuts[(i - 1) * TILE + j];
            cIns[i * TILE + j] = cOuts[(i - 1) * TILE + j];
          end
        end
      end
    end
  endgenerate

  generate
    // Row-major indexing
    // A is along rows (i), B is along columns (j)
    for (i = 0; i < TILE; ++i) begin : genI
      for (j = 0; j < TILE; ++j) begin : genJ
        PE_fff #(.EXP_IN_A(EXP_IN_A),
                 .FRAC_IN_A(FRAC_IN_A),
                 .EXP_IN_B(EXP_IN_B),
                 .FRAC_IN_B(FRAC_IN_B),
                 .TRAILING_BITS(TRAILING_BITS),
                 .EXP_OUT(EXP_OUT),
                 .FRAC_OUT(FRAC_OUT),
                 .OVERFLOW_DETECTION(OVERFLOW_DETECTION))
        unit(.aOut(aOuts[i * TILE + j]),
             .bOut(bOuts[i * TILE + j]),
             .cOut(cOuts[i * TILE + j]),
             // shift from col - 1 to col ( > )
             .aIn(aIns[i * TILE + j]),
             // shift from row - 1 to row ( V )
             .bIn(bIns[i * TILE + j]),
             // shift from row - 1 to row ( V )
             .cIn(cIns[i * TILE + j]),
             .enableMul(enableMul),
             .enableShiftOut(enableShiftOut),
             .reset(reset),
             .clock(clock));
      end
    end
  endgenerate

  generate
    for (j = 0; j < TILE; ++j) begin : genJ2
      always_comb begin
        // this is registered in the PE
        cNextOut[j] = cOuts[(TILE - 1) * TILE + j];
      end
    end
  endgenerate
endmodule
