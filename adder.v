module adder(
	     input[63:0] firstInput
	    ,input [63:0] secondInput
    	    ,output[63:0] out
	    );

	assign out = firstInput+secondInput ;
endmodule 
