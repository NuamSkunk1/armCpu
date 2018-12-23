module MUX2to1
  #( 
 		 parameter n = 64,
 		 parameter delay = 100
			)
			  (
			  input [n-1 : 0] dataIn1,
			  input [n-1 : 0] dataIn2,
			  input selector,
			  output [n-1 : 0] Out
			  );
  
  #delay assign Out = selector ? dataIn2 : dataIn1; 
  
endmodule
