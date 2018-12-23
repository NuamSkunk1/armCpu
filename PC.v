module PC	#( 
 		 parameter n = 64,
 		 parameter delay = 100
			)
			(clk, rst, w, oldpc, newpc);
			input clk;
			input rst;
			input w;
			input [n-1:0] oldpc;
			output reg [n-1:0] newpc;

		#delay always@(posedge clk)
		begin
			if(rst)
			begin
				newpc<=0;
			end
			esle if(w)
			begin
				newpc <= oldpc;
			end 
		
		end
endmodule
