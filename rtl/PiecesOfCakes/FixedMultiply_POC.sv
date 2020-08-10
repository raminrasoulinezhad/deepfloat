module FixedMultiply_POC #(	parameter IN_A_SIZE=3,
														parameter IN_B_SIZE=3)
	(input signed [IN_A_SIZE-1 : 0] a,
   input signed [IN_B_SIZE-1 : 0] b,
   
   output logic signed [IN_A_SIZE+IN_B_SIZE-1 : 0] mult);


	always_comb begin
		mult = a * b; 
	end 

endmodule 
