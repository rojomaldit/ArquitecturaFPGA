module mux64 #(parameter size = 64) (input logic [size - 1:0] d0, d1, d2, d3,d4, d5, d6, d7,
                     d8, d9, d10, d11, d12, d13, d14, d15,
                     d16, d17, d18, d19, d20, d21, d22, d23,
                     d24, d25, d26, d27, d28, d29, d30, d31,
                     d32, d33, d34, d35, d36, d37, d38, d39,
                     d40, d41, d42, d43, d44, d45, d46, d47,
                     d48, d49, d50, d51, d52, d53, d54, d55,
                     d56, d57, d58, d59, d60, d61, d62, d63,  
        input logic [5:0] s, 
        output logic [size - 1:0] y);
  logic [3:0] low, high;
  mux32 lowmux(  d0, d1, d2, d3,d4, d5, d6, d7,
            d8, d9, d10, d11, d12, d13, d14, d15,
            d16, d17, d18, d19, d20, d21, d22, d23,
            d24, d25, d26, d27, d28, d29, d30, d31,
            s[4:0], low);
            
  mux32 highmux(d32, d33, d34, d35, d36, d37, d38, d39,
           d40, d41, d42, d43, d44, d45, d46, d47,
           d48, d49, d50, d51, d52, d53, d54, d55,
           d56, d57, d58, d59, d60, d61, d62, d63,
           s[4:0], high);
  mux2 finalmux(low, high, s[5], y);
endmodule