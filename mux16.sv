module mux16(input logic [3:0] d0, d1, d2, d3,d4, d5, d6, d7,
										 d8, d9, d10, d11, d12, d13, d14, d15, 
				input logic [3:0] s, 
				output logic [3:0] y);
  logic [3:0] low, high;
  mux8 lowmux(d0 , d1,d2,d3,d4,d5,d6,d7,s[2:0], low); 
  mux8 highmux(d8, d9, d10, d11, d12, d13, d14, d15,  s[2:0], high);
  mux2 finalmux(low, high, s[3], y);
endmodule