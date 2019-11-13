module hd_unit(input logic ID_EX_RegWrite, EX_MEM_RegWrite,
               input logic [4:0] ID_EX_RegisterRD,
                                 EX_MEM_RegisterRD,
                                 MEM_WB_RegisterRD,
                                 IF_ID_RegisterRS,
                                 IF_ID_RegisterRT,
               output logic enable);

initial begin
  enable = 1;
 end
 always @(*) begin
  if( (ID_EX_RegWrite || EX_MEM_RegWrite) &&
  (ID_EX_RegisterRD != 31 || EX_MEM_RegisterRD != 31 ) && 
  (
  (IF_ID_RegisterRS == ID_EX_RegisterRD) 		|| 
  (IF_ID_RegisterRT == ID_EX_RegisterRD) 		|| 
  (IF_ID_RegisterRS == EX_MEM_RegisterRD) 	|| 
  (IF_ID_RegisterRT == EX_MEM_RegisterRD)
  ))
    enable = 0;
  else 
    enable = 1;
 end

endmodule