module fetch(	input logic PCSrc_F,clk,reset,
					input logic[63:0] PCBranch_F,
					output logic[63:0] imem_addr_F);
	
	logic[63:0] muxOut,flopOut,adderOut;
	mux2 _mux(adderOut,PCBranch_F,PCSrc_F,muxOut);
	flopr	flop(clk,reset,muxOut,flopOut);
	assign adderOut = flopOut + 4;
	assign imem_addr_F = flopOut;
endmodule
	