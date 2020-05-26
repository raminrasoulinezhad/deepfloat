module LogMultiplyAdd_POC #(parameter EXP_IN_A=3,
														parameter EXP_IN_B=3,
														parameter ACC_DESIRED=32)
	(input [EXP_IN_A : 0] a,
   input [EXP_IN_B : 0] b,

   input [ACC_DESIRED-1 : 0] accIn,
   
   output logic [ACC_DESIRED-1 : 0] accOut,

   input reset,
   input clock);

	localparam EXP_MAX_A_B = (EXP_IN_A > EXP_IN_B) ? EXP_IN_A : EXP_IN_B;
	localparam MAX_SHIFT = (2 ** EXP_IN_A - 1) + (2 ** EXP_IN_B - 1);
	localparam MAX_SHIFT_1 = MAX_SHIFT - 1;
	localparam PAD_SIZE = ACC_DESIRED - MAX_SHIFT;

	// unpack the input "a" and "b" 
	logic [EXP_IN_A-1 : 0] exp_a;
	logic [EXP_IN_B-1 : 0] exp_b;
	
	logic sign_a;
	logic sign_b;

	always_comb begin
		exp_a = a[EXP_IN_A-1 : 0];
		exp_b = b[EXP_IN_B-1 : 0];
		
		sign_a = a[EXP_IN_A];
		sign_b = b[EXP_IN_B];
	end 

	// add exponent
	logic [EXP_MAX_A_B : 0] exp_ab;
	logic sign_ab; 

	logic [MAX_SHIFT-1 : 0] decode;
	logic [MAX_SHIFT-1 : 0] decode_shifted;
	logic [PAD_SIZE-1 : 0] expantion;

	logic [ACC_DESIRED-1 : 0] kulisch_acc;

	always_comb begin		
		exp_ab = exp_a + exp_b;
		sign_ab = sign_a ^ sign_b;

		decode = {{MAX_SHIFT_1{sign_ab}},{~sign_ab}};
		decode_shifted = decode << exp_ab;

		expantion = {PAD_SIZE{sign_ab}};

		kulisch_acc = {{expantion},{decode_shifted}};
	end 

	always_ff @(posedge clock) begin
    if (reset) begin
    	accOut <= 0;
    end else begin 
    	accOut <= accIn + kulisch_acc;
    end 
  end 

endmodule 
