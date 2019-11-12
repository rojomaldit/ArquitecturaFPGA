module hd_unit(input logic ID_EX_MemRead,
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
  if(ID_EX_MemRead && ID_EX_RegisterRD != 31 &&
     (
       IF_ID_RegisterRS == ID_EX_RegisterRD ||
       IF_ID_RegisterRT == ID_EX_RegisterRD ||

       IF_ID_RegisterRS == EX_MEM_RegisterRD ||
       IF_ID_RegisterRT == EX_MEM_RegisterRD ||

       IF_ID_RegisterRS == MEM_WB_RegisterRD ||
       IF_ID_RegisterRT == MEM_WB_RegisterRD

     ))
    enable = 0;
  else
    enable = 1;
 end

endmodule
