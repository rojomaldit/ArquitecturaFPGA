module hd_unit(input logic ID_EX_MemRead,
               input logic [4:0] ID_EX_RegisterRD,EX_MEM_RegisterRD,IF_ID_RegisterRS,IF_ID_RegisterRT,
               output logic enable);

initial begin
  enable = 1;
 end
 always @(*) begin
  if(ID_EX_MemRead && ID_EX_RegisterRD != 31 &&
     (ID_EX_RegisterRD == IF_ID_RegisterRS || ID_EX_RegisterRD == IF_ID_RegisterRT))
    enable = 0;
  else
    enable = 1;
 end

endmodule
