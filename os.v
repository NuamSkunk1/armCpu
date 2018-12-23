module oc #( 
 		 parameter delay = 100
			)
	   (output reg clk);
			#delay always@(*)
			begin 
				#100 clk = 1;
				#100 clk = 0;
			end 
endmodule 
