module alu #(parameter SIZE = 64) (input logic [SIZE-1:0]a,  
                        input logic [SIZE-1:0]b,  
                        input logic [3:0]ALUControl,
                        output logic [SIZE-1: 0]result,
                        output logic zero);
  logic [SIZE-1:0] y;
  always_comb 
  case (ALUControl)
    4'b0000: y = a&b;
    4'b0001: y = a|b; 
    4'b0010: y = a+b;
    4'b0110: y = a-b;
    4'b0111: y = b;
    4'b1100: y = ~(a|b);
    default: y = 0;
  endcase
  assign result = y;
  assign zero  = ~(|y);

endmodule 