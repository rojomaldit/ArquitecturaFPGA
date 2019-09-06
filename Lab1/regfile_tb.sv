module regfile_tb();
  logic[4:0] ra1, ra2, wa3=18;
  logic[63:0] wd3;
  logic clk = 0, we3 = 0;

  regfile test(ra1,ra2,wa3,wd3,we3,clk);
  always #10 clk = ~clk;

  initial begin
    for(int k = 1; k <= 32; k++) begin
      ra1 = k;
      ra2 = k; 
      #5; // wait 5 ns
    end
	 ra1 = 18;#10;
    we3 = 1;
    wd3 = 9;#10;
    we3 = 0;
    wd3 = 10;#10;
    
	  $stop;
  end

endmodule 