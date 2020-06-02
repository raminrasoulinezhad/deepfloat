module FixedAdd_POC #(parameter IN_A_SIZE=3)
	(input signed [IN_A_SIZE-1 : 0] a,

   input signed [IN_A_SIZE-1 : 0] accIn,
   
   output logic signed [IN_A_SIZE-1 : 0] accOut);

	always_comb begin
    	accOut = accIn + a;
  end 

endmodule 
