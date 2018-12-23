module Adder64
		 #( 
 		 parameter n = 64,
 		 parameter delay = 100
			)
		(
		input [n-1:0] firstInput,secondInput,
		output [n-1:0] out ,
		output C
				);

		out = firstInput + secondInput;
		assign #delay C = out[64];
		
endmodule
