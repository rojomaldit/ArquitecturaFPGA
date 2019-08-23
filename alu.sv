module alu #(parameter SIZE=64) (input logic[SIZE:0] a, b,
                                 input logic[3:0] c,
                                 output logic[SIZE:0] out
                                );
  
  if(c===4'b0) out <= a&b;
  else if(c===4'b0001) out <= a|b;
  else if(c===4'b0010) out <= a+b;
  else if(c===4'b0110) out <= a-b;
  else if(c===4'b0111) out <= b;
  else if(c===4'b1100) out <= ~(a|b);

endmodule