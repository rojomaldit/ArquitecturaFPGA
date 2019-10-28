	module execute #(parameter size = 64)( input logic AluSrc,
                    input logic[3:0] AluControl,
                    input logic[size-1:0] PC_E, signImm_E, readData1_E, readData2_E,
                    output logic[size-1:0] PCBranch_E, aluResult_E, writeData_E, 
                    output logic zero_E);
	
    logic[63:0] muxOut;

    assign writeData_E = readData2_E;
    mux2 _mux(readData2_E, signImm_E, AluSrc, muxOut);
    alu _alu(readData1_E, muxOut, AluControl, aluResult_E, zero_E);

    assign PCBranch_E = (signImm_E <<< 2) + PC_E;

endmodule
	