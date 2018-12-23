module ALU	 #( 
 		 parameter n = 64,
 		 parameter delay = 100
			)
			(input [n-1:0] dataA,dataB,
			input [3:0] select,
			output [n-1:0] result,
			output Z,C
				);
	reg [n:0] resultTemp;
	reg zTemp;

	#delay always @(*)
		begin
			z_temp = 0;
			case(select)
				4'b0000: resultTemp = dataA & dataB;
				4'b0001: resultTemp = dataA | dataB;
				4'b0010: resultTemp = dataA + dataB;
				4'b0110: resultTemp = dataA - dataB;
				4'b0111: resultTemp = dataB;
				4'b1100: resultTemp = ~(dataA | dataB);
			endcase
			if ( resultTemp[63:0]==0 )
				begin
					zTemp = 1;
				end
		end

	assign result = resultTemp[63:0];
	assign C = resultTemp[64];
	assign Z = zTemp;
endmodule
