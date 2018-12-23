module DataMemory
     
  		#( 
 		 parameter n = 64,
 		 parameter delay = 100
			)
			(	input clk,
				input [n-1:0] address,
				input [n-1:0] DataIn,
				input read,write,
				output reg [n-1:0] DataOut
			  );
  
     reg [n-1 : 0] Memory [0 : 255];
  assign DataOut = read ? Memory[Address] : {n{1'bz}}; 
  
  always @(posedge clk) begin
      if(write)
      Memory[Address] <= DataIn;  
  end

endmodule 
