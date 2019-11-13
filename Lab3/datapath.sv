// DATAPATH

module datapath #(parameter N = 64)
					(input logic reset, clk,
					input logic reg2loc,									
					input logic AluSrc,
					input logic [3:0] AluControl,
					input logic	Branch,
					input logic Nzero,
					input logic memRead,
					input logic memWrite,
					input logic regWrite,	
					input logic memtoReg,									
					input logic [31:0] IM_readData,
					input logic [N-1:0] DM_readData,
					output logic [N-1:0] IM_addr, DM_addr, DM_writeData,
					output logic DM_writeEnable, DM_readEnable);					
					
	logic PCSrc;
	logic enable;
	logic [N-1:0] PCBranch_E, aluResult_E, writeData_E, writeData3; 
	logic [N-1:0] signImm_D, readData1_D, readData2_D;
	logic zero_E;
	logic [95:0] qIF_ID;
	logic [272:0] qID_EX;
	logic [203:0] qEX_MEM;
	logic [134:0] qMEM_WB;
	logic [10:0] controlSignals;
	logic [4:0] IF_ID_RT;
	mux2 		#(11) 	hdu_mux	(11'b0,
										{
											Nzero, AluSrc, 
											AluControl, Branch, 
											memRead, memWrite, 
											regWrite, memtoReg
										},
										enable,controlSignals);
										
	//mux2 #(5) rtMux(qIF_ID[20:16],qIF_ID[4:0],reg2loc,IF_ID_RT);
										
	hd_unit 				hd(.ID_EX_RegWrite(qID_EX[262]),
								.EX_MEM_RegWrite(qEX_MEM[199]),
								.ID_EX_RegisterRD(qID_EX[4:0]),
								.EX_MEM_RegisterRD(qEX_MEM[4:0]),
								.IF_ID_RegisterRT(qIF_ID[20:16]),
								.IF_ID_RegisterRS(qIF_ID[9:5]),
								.enable(enable));
	
	fetch 	#(64) 	FETCH 	(.PCSrc_F(PCSrc),
										.clk(clk),
										.reset(reset),
										.enable(enable),
										.PCBranch_F(qEX_MEM[197:134]),
										.imem_addr_F(IM_addr));								
					
	
	flopre 	#(96)		IF_ID 	(	.clk(clk),
											.reset(reset),
											.enable(enable),
											.d({IM_addr, IM_readData}),
											.q(qIF_ID));
										
	
	decode 	#(64) 	DECODE 	(.regWrite_D(qMEM_WB[134]),
										.reg2loc_D(reg2loc), 
										.clk(clk),
										.writeData3_D(writeData3),
										.instr_D(qIF_ID[31:0]), 
										.signImm_D(signImm_D), 
										.readData1_D(readData1_D),
										.readData2_D(readData2_D),
										.wa3_D(qMEM_WB[4:0]));				
																																	
	flopr 	#(272)	ID_EX 	(.clk(clk),
										.reset(reset), 
										.d({controlSignals,	
											qIF_ID[95:32], signImm_D, readData1_D, readData2_D, qIF_ID[4:0]}),
										.q(qID_EX));	
	
										
	execute 	#(64) 	EXECUTE 	(.AluSrc(qID_EX[270]),
										.AluControl(qID_EX[269:266]),
										.PC_E(qID_EX[260:197]), 
										.signImm_E(qID_EX[196:133]), 
										.readData1_E(qID_EX[132:69]), 
										.readData2_E(qID_EX[68:5]), 
										.PCBranch_E(PCBranch_E), 
										.aluResult_E(aluResult_E), 
										.writeData_E(writeData_E), 
										.zero_E(zero_E));											
											
									
	flopr 	#(204)	EX_MEM 	(.clk(clk),
										.reset(reset), 
										.d({qID_EX[271],qID_EX[265:261], PCBranch_E, zero_E, aluResult_E, writeData_E, qID_EX[4:0]}),
										.q(qEX_MEM));	
	
										
	memory				MEMORY	(	.Nzero_W(qEX_MEM[203]),
											.Branch_W(qEX_MEM[202]), 
											.zero_W(qEX_MEM[133]), 
											.PCSrc_W(PCSrc));
			
	
	// Salida de señales a Data Memory
	assign DM_writeData = qEX_MEM[68:5];
	assign DM_addr = qEX_MEM[132:69];
	
	// Salida de señales de control:
	assign DM_writeEnable = qEX_MEM[200];
	assign DM_readEnable = qEX_MEM[201];
	
	flopr 	#(135)	MEM_WB 	(.clk(clk),
										.reset(reset), 
										.d({qEX_MEM[199:198], qEX_MEM[132:69],	DM_readData, qEX_MEM[4:0]}),
										.q(qMEM_WB));
		
	
	writeback #(64) 	WRITEBACK (.aluResult_W(qMEM_WB[132:69]), 
										.DM_readData_W(qMEM_WB[68:5]), 
										.memtoReg(qMEM_WB[133]), 
										.writeData3_W(writeData3));		
		
endmodule
