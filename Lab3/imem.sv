module imem (input logic [5:0] addr,
				 output logic [31:0] q);
			
logic [31:0] rom [0:19] = '{
  32'h91002809,
  32'hcb09014a,
  32'hb40000aa,
  32'h8b000000,
  32'h8b000000,
  32'h8b000000,
  32'hf8000006,
  32'h9100140a,
  32'hf8008002,
  32'hf840800b,
  32'h8b010042,
  32'haa000084,
  32'hf8010002,
  32'h91004000,
  32'hcb01014a,
  32'hb5ffff2a,
  32'h8b000000,
  32'h8b000000,
  32'h8b000000,
  32'hf8008003
};

assign q = (addr < 19 ? rom[addr] : 32'h00000000 );
endmodule
