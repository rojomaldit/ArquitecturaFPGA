module mux3 #(parameter N = 64)(input logic[N-1:0] a,b,c,
                      input logic[1:0] s,
                      output logic[N-1:0] out);
                      
  always_comb begin 
    case(s)
    2'b00: result = a;
    2'b01: result = b;
    2'b10: result = c;
    default: result = a;
    endcase
  end
endmodule
