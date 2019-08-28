module regfile (input logic[4:0] ra1, ra2, wa3,
                input logic[63:0] wd3,
                input logic we3, clk,
                output logic [63:0] rd1, rd2
               );
  
  logic[63:0] regs[31:0] = '{ 64'b0, 64'd1, 64'd2, 64'd3,
                              64'd4, 64'd5, 64'd6, 64'd7,
                              64'd8, 64'd9, 64'd10, 64'd11,
                              64'd12, 64'd13, 64'd14, 64'd15,
                              64'd16, 64'd17, 64'd18, 64'd19,
                              64'd20, 64'd21, 64'd22, 64'd23,
                              64'd24, 64'd25, 64'd26, 64'd27,
                              64'd28, 64'd29, 64'd30, 64'd0
                            }
  
  rd1 = regs[ra1];
  rd2 = regs[ra2];

  always_ff @(posedge clk)
		if (clk) begin
      always_comb
      case(wa3)
        'd32: regs[wa3] = 0;
        default: 'b1: regs[wa3] = wd3;
      endcase
    end

endmodule