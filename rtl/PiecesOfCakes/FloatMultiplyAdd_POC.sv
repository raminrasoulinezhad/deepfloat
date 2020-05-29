module FloatMultiplyAdd_POC #(	parameter EXP_IN_A=3,
														parameter FRAC_IN_A=2,
														parameter EXP_IN_B=3,
														parameter FRAC_IN_B=2,
														parameter ACC_DESIRED=32)
	(input [EXP_IN_A+FRAC_IN_A : 0] a,
   input [EXP_IN_B+FRAC_IN_B : 0] b,

   input [ACC_DESIRED-1 : 0] accIn,
   
   output logic [ACC_DESIRED-1 : 0] accOut,

   input reset,
   input clock);

	localparam EXP_MAX_A_B = (EXP_IN_A > EXP_IN_B) ? EXP_IN_A : EXP_IN_B;
	localparam MAN_AB_PAD_SIZE = ACC_DESIRED - (FRAC_IN_A+FRAC_IN_B+2);
	// unpack the input "a" and "b" 
	logic [EXP_IN_A-1 : 0] exp_a;
	logic [EXP_IN_B-1 : 0] exp_b;
	
	logic [FRAC_IN_A-1 : 0] man_a;
	logic [FRAC_IN_B-1 : 0] man_b;
	
	logic sign_a;
	logic sign_b;

	always_comb begin
		exp_a = a[FRAC_IN_A+EXP_IN_A-1 : FRAC_IN_A];
		exp_b = b[FRAC_IN_B+EXP_IN_B-1 : FRAC_IN_B];
	
		man_a = a[FRAC_IN_A-1 : 0];
		man_b = b[FRAC_IN_B-1 : 0];
	
		sign_a = a[FRAC_IN_A+EXP_IN_A];
		sign_b = b[FRAC_IN_B+EXP_IN_B];
	end 

	// multiplier operand and result
	logic implicit_a;
	logic implicit_b;

	logic [FRAC_IN_A : 0] op_a;
	logic [FRAC_IN_B : 0] op_b;

	logic [FRAC_IN_A+FRAC_IN_B+1 : 0] man_ab;

	logic [EXP_MAX_A_B : 0] exp_ab;
	logic sign_ab; 

	always_comb begin		
		// flip implicit bit (for denormal)
		implicit_a = (|exp_a == 0) ? 1'b0 : 1'b1;
		implicit_b = (|exp_b == 0) ? 1'b0 : 1'b1;
		op_a = {implicit_a,man_a};
		op_b = {implicit_b,man_b};

		// multiply mantissa - unsigned
		man_ab = op_a * op_b; 
		// add exponent
		exp_ab = exp_a + exp_b;
		sign_ab = sign_a ^ sign_b;
	end 

	// ACC part - kulisch internal 
	logic [FRAC_IN_A+FRAC_IN_B+1 : 0] man_ab_s;
	logic man_ab_s_c;

	logic [MAN_AB_PAD_SIZE-1 : 0] man_ab_p;

	logic [ACC_DESIRED-1 : 0] kulisch_acc;
	logic [ACC_DESIRED-1 : 0] man_wide;

	always_comb begin 
		
		{man_ab_s_c, man_ab_s} = (man_ab ^ {ACC_DESIRED{sign_ab}}) + sign_ab;

		if (sign_ab) begin 
			if (man_ab_s_c == 1'b1) begin 
 				man_ab_p = {MAN_AB_PAD_SIZE{1'b0}};
 			end else begin 
 				man_ab_p = {MAN_AB_PAD_SIZE{1'b1}};
 			end 
		end else begin
			man_ab_p = {MAN_AB_PAD_SIZE{1'b0}};
		end 

		man_wide = {{man_ab_p},{man_ab_s}};

		kulisch_acc = man_wide << exp_ab;

	end 

	always_ff @(posedge clock) begin
    if (reset) begin
    	accOut <= 0;
    end else begin 
    	accOut <= accIn + kulisch_acc;
    end 
  end 

endmodule 
