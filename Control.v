module Control(input [10:0] opcode,
	output reg Reg2Loc,Branch,MemRead,MemWrite,MemtoReg,RegWrite,ALUSrc,
	output reg [1:0] ALUOp
);
	
			always @(*)
			begin
				case (opcode)
						11'b1xx0101x000: begin // R-Type

								Reg2Loc = 0;
								Branch = 0;
								MemRead = 0;
								MemWrite = 0;
								MemtoReg = 0;
								RegWrite = 1;
								ALUSrc = 0;
								ALUOp = 2'b10;
							end
						11'b11111000xxx: begin // D-Type

								Reg2Loc = 1;
								Branch = 0;
								ALUSrc = 1;
								ALUOp = 2'b00;			
								if(opcode[1:0]==2'b00) begin //STUR

									MemRead = 0;
									MemWrite = 1;
									MemtoReg = 0;
									RegWrite = 0;
								end
								else if(opcode[1:0]==2'b10) begin //LDUR

									MemRead = 1;
									MemWrite = 0;
									MemtoReg = 1;
									RegWrite = 1;
								end
							end	
						11'b10110100xxx: begin // CB-Type //CBZ

								Reg2Loc = 1;
								Branch = 1;
								MemRead = 0;
								MemWrite = 0;
								MemtoReg = 0;
								RegWrite = 0;
								ALUSrc = 0;
								ALUOp = 2'b01;
						end
		
			endcase
			end
endmodule
