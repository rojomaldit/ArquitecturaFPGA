module imem (input logic [5:0] addr,
         output logic [31:0] q);
      
logic [31:0] rom [0:18] = '{
  32'h8b000009,
  32'h8b000008,
  32'h91008004,
  32'h91003c0a,
  32'haa14018b,
  32'h8a14018c,
  32'hd503201f,
  32'h8b0a0000,
  32'hd503201f,
  32'hcb01014a,
  32'hf800012b,
  32'hf800812c,
  32'hd503201f,
  32'hd503201f,
  32'hb5ffff2a,
  32'hd503201f,
  32'hf8010120,
  32'hd503201f,
  32'hb4ffffe9
};

assign q = rom[addr];
endmodule
