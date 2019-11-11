module mux4 #(parameter size = 64) (input logic [size - 1:0] d0, d1, d2, d3, 
            input logic [1:0] s, 
            output logic [size - 1:0] y
           );
  logic [3:0] low, high;
  mux2 lowmux(d0, d1, s[0], low); 
  mux2 highmux(d2, d3, s[0], high);
  mux2 finalmux(low, high, s[1], y);
endmodule