module maindec(input logic[10:0] Op,
               output logic Reg2Loc, ALUSrc, RegWrite, MemtoReg, MemRead, MemWrite, Branch, NZero,
               output logic[1:0] ALUOp);
    always_comb

	casez(Op)
		// LDUR
        11'b111_1100_0010: begin
			Reg2Loc = 'b0;
			ALUSrc = 'b1;
			MemtoReg = 'b1;
			RegWrite = 'b1;
			MemRead = 'b1;
			MemWrite = 'b0;
			Branch = 'b0;
			NZero = 'b0;
			ALUOp = 'b0;
        end
		// STUR
		11'b111_1100_0000: begin
			Reg2Loc = 'b1;
			ALUSrc = 'b1;
			MemtoReg = 'b0;
			RegWrite = 'b0;
			MemRead = 'b0;
			MemWrite = 'b1;
			Branch = 'b0;
			NZero = 'b0;	
			ALUOp = 'b0;
        end
      // CBZ
		11'b101_1010_0zzz: begin
			Reg2Loc = 'b1;
			ALUSrc = 'b0;
			MemtoReg = 'b0;
			RegWrite = 'b0;
			MemRead = 'b0;
			MemWrite = 'b0;
			Branch = 'b1;
			NZero = 'b0;			
			ALUOp = 'b01;
        end
		  // CBNZ
		11'b101_1010_1zzz: begin
			Reg2Loc = 'b1;
			ALUSrc = 'b0;
			MemtoReg = 'b0;
			RegWrite = 'b0;
			MemRead = 'b0;
			MemWrite = 'b0;
			Branch = 'b1;
			NZero = 'b1;			
			ALUOp = 'b01;
        end
        // ADD 
		11'b100_0101_1000: begin
			Reg2Loc = 'b0;
			ALUSrc = 'b0;
			MemtoReg = 'b0;
			RegWrite = 'b1;
			MemRead = 'b0;
			MemWrite = 'b0;
			Branch = 'b0;
			NZero = 'b0;
			ALUOp = 'b10;
        end
        // ADDI
        11'b100_1000_100z:begin
			Reg2Loc = 'b1;
			ALUSrc = 'b1;
			MemtoReg = 'b0;
			RegWrite = 'b1;
			MemRead = 'b0;
			MemWrite = 'b0;
			Branch = 'b0;
			NZero = 'b0;
			ALUOp = 'b10;
        end 
		// SUB
        11'b110_0101_1000: begin
			Reg2Loc = 'b0;
			ALUSrc = 'b0;
			MemtoReg = 'b0;
			RegWrite = 'b1;
			MemRead = 'b0;
			MemWrite = 'b0;
			Branch = 'b0;
			NZero = 'b0;
			ALUOp = 'b10;
        end
		// AND
		11'b100_0101_0000: begin
			Reg2Loc = 'b0;
			ALUSrc = 'b0;
			MemtoReg = 'b0;
			RegWrite = 'b1;
			MemRead = 'b0;
			MemWrite = 'b0;
			Branch = 'b0;
			NZero = 'b0;
			ALUOp = 'b10;
        end
		// ORR
		11'b101_0101_0000: begin
			Reg2Loc = 'b0;
			ALUSrc = 'b0;
			MemtoReg = 'b0;
			RegWrite = 'b1;
			MemRead = 'b0;
			MemWrite = 'b0;
			Branch = 'b0;
			NZero = 'b0;
			ALUOp = 'b10;
        end
		default: begin
			Reg2Loc = 'b0;
			ALUSrc = 'b0;
			MemtoReg = 'b0;
			RegWrite = 'b0;
			MemRead = 'b0;
			MemWrite = 'b0;
			Branch = 'b0;
			NZero = 'b0;
			ALUOp = 'b0;
        end
	endcase


endmodule