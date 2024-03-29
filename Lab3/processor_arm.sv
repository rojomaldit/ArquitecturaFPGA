// PIPELINED PROCESSOR

module processor_arm #(parameter N = 64)
              (input logic CLOCK_50, reset,
              output logic [N-1:0] DM_writeData, DM_addr,
              output logic DM_writeEnable,
              input  logic dump);
              
  logic [31:0] q;
  logic [10:0] instr;
  logic [3:0] AluControl;
  logic reg2loc, regWrite, AluSrc, Branch, Nzero, memtoReg, memRead, memWrite;
  logic [N-1:0] DM_readData, IM_address;  //DM_addr, DM_writeData
  logic DM_readEnable, enable; //DM_writeEnable
  
  controller     c       (.instr(instr), 
                  .AluControl(AluControl), 
                  .reg2loc(reg2loc), 
                  .regWrite(regWrite), 
                  .AluSrc(AluSrc), 
                  .Branch(Branch),
                  .Nzero(Nzero),
                  .memtoReg(memtoReg), 
                  .memRead(memRead), 
                  .memWrite(memWrite));
                            
          
  datapath #(64) dp     (.reset(reset), 
                  .clk(CLOCK_50), 
                  .reg2loc(reg2loc), 
                  .AluSrc(AluSrc), 
                  .AluControl(AluControl), 
                  .Branch(Branch),
                  .Nzero(Nzero),
                  .memRead(memRead),
                  .memWrite(memWrite), 
                  .regWrite(regWrite), 
                  .memtoReg(memtoReg), 
                  .IM_readData(q), 
                  .DM_readData(DM_readData), 
                  .IM_addr(IM_address), 
                  .DM_addr(DM_addr), 
                  .DM_writeData(DM_writeData), 
                  .DM_writeEnable(DM_writeEnable), 
                  .DM_readEnable(DM_readEnable),
                  .enable(enable));        
          
          
  imem         instrMem (.addr(IM_address[7:2]),
                  .q(q));
                  
  
  dmem         dataMem   (.clk(CLOCK_50), 
                  .memWrite(DM_writeEnable), 
                  .memRead(DM_readEnable), 
                  .address(DM_addr[8:3]), 
                  .writeData(DM_writeData), 
                  .readData(DM_readData), 
                  .dump(dump));               
     
  flopre #(11)    IF_ID_TOP(.clk(CLOCK_50),
                  .reset(reset), 
                  .d(q[31:21]), 
                  .q(instr),
                  .enable(enable));

endmodule
