module imem (input logic [5:0] addr,
				 output logic [31:0] q);
			
logic [31:0] rom [0:22] = '{
                              32'h8b1f03e0,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'h91002001,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'hb5000102,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'h8b000001,
                              32'hd503201f,
                              32'hd503201f,
                              32'hd503201f,
                              32'h8b010021,
                              32'hd503201f,
                              32'hd503201f,
                              32'hf8000001
                             };

		assign q = rom[addr];
endmodule
