module flopre_tb();
  logic clk = 0,reset,enable = 1;
  logic [32:0]d = '0,q;
  int data = 1;
  flopre #(32) test(clk,reset,enable,d,q);
  initial begin 
    reset = 1; #50;
    reset = 0; #25;
    enable = 0; #25;
    $stop;
  end
  always @(negedge clk) begin
    d = data;
    data++;
  end  
  always #5 clk = ~clk;
endmodule
  