module hd_unit(input logic ID_EX_MemToReg,
                           EX_Mem_MemToReg,
               input logic [4:0] ID_EX_RegisterRD,
                                 IF_ID_RegisterRS,
                                 IF_ID_RegisterRT,
                                 EX_MEM_RegisterRD,
               output logic enable);

initial begin
  enable = 1;
 end
 always @(*) begin
  if(EX_Mem_MemToReg && EX_MEM_RegisterRD != 31 &&
    (EX_MEM_RegisterRD == IF_ID_RegisterRS ||
     EX_MEM_RegisterRD == IF_ID_RegisterRT))
    enable = 0;
  else
    enable = 1;
 end

endmodule
