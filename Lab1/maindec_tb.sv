module maindec_tb();
	logic[10:0] op;
    logic Reg2Loc, ALUSrc, RegWrite, MemtoReg, MemRead, MemWrite, Branch;
    logic[1:0] ALUOp;
	
	maindec test(op, Reg2Loc, ALUSrc, RegWrite, MemtoReg, MemRead, MemWrite, Branch, ALUOp);
	
	initial begin
		op = 11'b111_1100_0010; #5;
		op = 11'b111_1100_0000; #5;
		op = 11'b101_1010_0???; #5;
		op = 11'b100_0101_1000; #5;
		op = 11'b110_0101_1000; #5;
		op = 11'b100_0101_0000; #5;
		op = 11'b101_0101_0000; #5;
		
	end

endmodule 