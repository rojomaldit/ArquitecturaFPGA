module imem (input logic [5:0] addr,
				 output logic [31:0] q);
			
    logic [31:0] rom [0:18] = '{
                              32'h91003c0a,
                              32'haa14018b,
                              32'h8a14018c,
                              32'h8b0a0000,
                              32'hcb01014a,
                              32'h8b1f03e5,
                              32'hf80000ab,
                              32'hf80080ac,
                              32'hb5ffff6a,
                              32'hf80100a0,
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
