module oc(clk);
always@(*)
	begin 
		#100 clk = 1;
		#100 clk = 0;
	end 
endmodule 
