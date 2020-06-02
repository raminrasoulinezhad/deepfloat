module Shifter_POC #(	parameter EXP_IN_A=3,
											parameter FRAC_IN_A=2,
											parameter EXP_IN_B=3,
											parameter FRAC_IN_B=2,
											parameter ACC_DESIRED=32,
											parameter EXP_MAX_A_B=(EXP_IN_A > EXP_IN_B)?EXP_IN_A:EXP_IN_B)
	(	input [FRAC_IN_A+FRAC_IN_B+1 : 0] man_ab,
		input [EXP_MAX_A_B : 0] exp_ab,
		input sign_ab,

   	input [ACC_DESIRED-1 : 0] accIn,
   
   	output logic [ACC_DESIRED-1 : 0] kulisch_acc);

	localparam MAN_AB_PAD_SIZE = ACC_DESIRED - (FRAC_IN_A+FRAC_IN_B+2);

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


endmodule 
