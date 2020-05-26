module FixedMultiplyAdd_POC #(parameter IN_A_SIZE=3,
															parameter IN_B_SIZE=3,
															parameter ACC_DESIRED=32)
	(input signed [IN_A_SIZE : 0] a,
   input signed [IN_B_SIZE : 0] b,

   input signed [ACC_DESIRED-1 : 0] accIn,
   
   output logic signed [ACC_DESIRED-1 : 0] accOut,

   input reset,
   input clock);

	logic signed [ACC_DESIRED-1 : 0] mult;

	always_comb begin
		mult = a * b; 
	end 

	always_ff @(posedge clock) begin
    if (reset) begin
    	accOut <= 0;
    end else begin 
    	accOut <= accIn + mult;
    end 
  end 

endmodule 
