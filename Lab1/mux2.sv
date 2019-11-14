module mux2 #(parameter size = 64)(input logic [size - 1:0] d0,d1, 
        input logic       s0,
        output logic [size - 1:0]  y);
  assign y = s0 ? d1 : d0;
endmodule