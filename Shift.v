module Shift(
		input [63:0] in
		 output [63:0] out);
	reg a = 2'b00;
	assign out = {in , a};

endmodule
