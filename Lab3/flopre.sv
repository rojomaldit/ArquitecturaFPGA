module flopre #(parameter SIZE = 64) (input logic clk,reset,enable,
                          input logic [SIZE-1:0]d,
                          output logic [SIZE-1:0]q);

  always_ff @(posedge clk, posedge reset, posedge enable) begin
      if (reset) q <= '0;
      else if(enable) q <= d;
  end
endmodule