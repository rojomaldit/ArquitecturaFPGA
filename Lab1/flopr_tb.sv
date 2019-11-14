module flopr_tb();
  logic clk = 0,reset;
  logic [32:0]d = '0,q;
  int data = 1;
  flopr #(32)test(clk,reset,d,q);
  initial begin 
    reset = 1; #50;
    reset = 0; #50;
    $stop;
  end
  always @(negedge clk) begin
    d = data;
    data++;
  end  
  always #5 clk = ~clk;
endmodule
  