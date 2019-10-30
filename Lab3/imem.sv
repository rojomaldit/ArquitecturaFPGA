module imem (input logic [5:0] addr,
				 output logic [31:0] q);
			
	logic [31:0] rom [0:18] = '{
                              32'h91002001,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hb40000c2,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'h8b000001,
                              32'h8b010021,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hf8000001,
                              32'h00000000,
                              32'h00000000
                             };
		assign q = rom[addr];
endmodule
