module signext(input logic[31:0] a,
               output logic[63:0] y);
					
	logic [10:0]opcode;
	logic [63:0]temp;
	assign opcode = a[31:21];
	always_comb
	casez(opcode)
      11'b100_1000_100z:
            temp = {52'b0,a[21:10]};
		11'b111_1100_0010:
			temp = {{55{a[20]}},a[20:12]};
		11'b111_1100_0000:
			temp = {{55{a[20]}},a[20:12]};
		11'b101_1010_0zzz:
			temp = {{45{a[23]}},a[23:5]};
		11'b101_1010_1zzz:
			temp = {{45{a[23]}},a[23:5]};
		default:
			temp = 64'b0;
	endcase
	assign y = temp;
endmodule