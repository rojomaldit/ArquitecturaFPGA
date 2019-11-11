module fetch #(parameter size = 64)(input logic PCSrc_F,clk,reset,
                                    input logic[size-1:0] PCBranch_F,
                                    input logic enable,
                                    output logic[size-1:0] imem_addr_F);

  logic[size-1:0] muxOut,flopOut,adderOut;

  // flopr  #(size) flop(clk,reset,muxOut,flopOut);
  mux2 #(size) _mux(adderOut,PCBranch_F,PCSrc_F,muxOut);
  flopre #(size) _flopre(clk,reset,enable,muxOut,imem_addr_F);
  assign adderOut = flopOut + 4;
  assign imem_addr_F = flopOut;

endmodule
