module memory (
input wire [63:0] adr,          
input wire [63:0] datain,    
input wire w, r,
input wire clk,                 
output reg [63:0] dataout      
);

reg [63:0] MEMO[0:255];  

always @(posedge clk)
begin
	if (w == 1'b1) 
	begin
    		MEMO[adr] <= datain;
  	end

end
always@(*)
begin
	if(r == 1'b1)
		dataout <= MEMO[adr];
end
endmodule 
