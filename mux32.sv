module mux32 #(parameter size = 64) (input logic [size - 1:0] d0, d1, d2, d3,d4, d5, d6, d7,
										 d8, d9, d10, d11, d12, d13, d14, d15,
										 d16, d17, d18, d19, d20, d21, d22, d23,
										 d24, d25, d26, d27, d28, d29, d30, d31, 
				input logic [4:0] s, 
				output logic [size - 1:0] y);
  logic [3:0] low, high;
  mux16 lowmux(d0, d1, d2, d3,d4, d5, d6, d7,
					d8, d9, d10, d11, d12, d13, d14, d15,
					s[3:0], low); 
  mux16 highmux(d16, d17, d18, d19, d20, d21, d22, d23,
					 d24, d25, d26, d27, d28, d29, d30, d31,
					 s[3:0], high);
  mux2 finalmux(low, high, s[4], y);
endmodule