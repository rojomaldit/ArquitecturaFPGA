module hd_unit(input logic ID_EX_RegWrite,
                           EX_Mem_RegWrite,
                           ID_EX_MemToReg,
                           ID_EX_MemRead,
                           EX_Mem_MemToReg,
                           EX_Mem_MemRead,
               input logic [4:0] ID_EX_RegisterRD,
                                 EX_MEM_RegisterRD,
                                 MEM_WB_RegisterRD,
                                 IF_ID_RegisterRD,
                                 IF_ID_RegisterRS,
                                 IF_ID_RegisterRT,
                                 IF_ID_branch,
               output logic enable);

initial begin
  enable = 1;
 end
 always @(*) begin

  if ((ID_EX_RegisterRD != 5'b11111 &&
      (ID_EX_RegWrite == 1'b1 || ID_EX_MemRead == 1'b1)) &&
      (IF_ID_RegisterRS == ID_EX_RegisterRD || IF_ID_RegisterRT == ID_EX_RegisterRD)) 
         enable = 0;
  else if ((EX_MEM_RegisterRD != 5'b11111 &&
           (EX_Mem_RegWrite == 1'b1 || EX_Mem_MemRead == 1'b1)) &&
           (IF_ID_RegisterRS == EX_MEM_RegisterRD || IF_ID_RegisterRT == EX_MEM_RegisterRD))
              enable = 0;
  else if (IF_ID_branch == 1'b1 &&
          (IF_ID_RegisterRD == ID_EX_RegisterRD ||
           IF_ID_RegisterRD == EX_MEM_RegisterRD))
           enable = 0;
  else enable = 1;

  // if(ID_EX_RegWrite && ID_EX_RegisterRD != 31 &&
  //    (
  //      IF_ID_RegisterRS == ID_EX_RegisterRD ||
  //      IF_ID_RegisterRT == ID_EX_RegisterRD
  //    ))
  //   enable = 0;
  // else if(EX_Mem_RegWrite && ID_EX_RegisterRD != 31 &&
  //    (
  //      IF_ID_RegisterRS == EX_MEM_RegisterRD ||
  //      IF_ID_RegisterRT == EX_MEM_RegisterRD
  //    ))
  //   enable = 0;
  // else
  //   enable = 1;
 end

endmodule
