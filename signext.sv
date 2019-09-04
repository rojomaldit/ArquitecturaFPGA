module signext(input logic[31:0] a,
               output logic[63:0] y);
					
	logic [10:0]opcode;
	logic [63:0]temp;
	assign opcode = a[31:21];
	always_comb
	casez(opcode)
		11'b111_1100_0010:
			temp = {{55{a[20]}},a[20:12]};
		11'b111_1100_0000:
			temp = {{55{a[20]}},a[20:12]};
		11'b101_1010_0zzz:
			temp = {{43{a[23]}},a[23:5],{2'b0}};
		default:
			temp = 64'b0;
	endcase
	assign y = temp;
endmodule