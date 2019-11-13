module imem (input logic [5:0] addr,
         output logic [31:0] q);
      
logic [31:0] rom [0:22] = '{
  32'h8b00000f,
  32'h910029e9,
  32'hcb09014a,
  32'hb40000aa,
  32'h8b1f03ff,
  32'h8b1f03ff,
  32'h8b1f03ff,
  32'hf8000006,
  32'h910015ea,
  32'hf8008002,
  32'hf840800b,
  32'h8b010042,
  32'haa0f0084,
  32'hf8010002,
  32'h91004000,
  32'hcb01014a,
  32'hb5ffff2a,
  32'h8b1f03ff,
  32'h8b1f03ff,
  32'h8b1f03ff,
  32'hf8008003,
  32'h8b0f01e0,
  32'hb4ffffef
};

assign q = rom[addr];
endmodule
