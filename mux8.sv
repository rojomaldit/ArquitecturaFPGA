module mux8(input logic [3:0] d0, d1, d2, d3,d4, d5, d6, d7, 
				input logic [2:0] s, 
				output logic [3:0] y);
  logic [3:0] low, high;
  mux4 lowmux(d0, d1,d2,d3,s[1:0], low); 
  mux4 highmux(d4,d5,d6,d7, s[1:0], high);
  mux2 finalmux(low, high, s[2], y);
endmodule