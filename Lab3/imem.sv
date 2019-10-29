module imem (input logic [5:0] addr,
				 output logic [31:0] q);
			

	logic [31:0] rom [0:18] = '{
                              32'h8b1f03e0,
                              32'h8b1f0001,
                              32'h8b1f0022,
                              32'h8b1f0043,
                              32'hf8000000,
                              32'hf8008001,
                              32'hf8010002,
                              32'hf8018003,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000,
                              32'h00000000
                             };
		
										
	assign q = rom[addr];
endmodule
