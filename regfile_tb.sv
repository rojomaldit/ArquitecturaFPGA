module regfile_tb();
  logic[4:0] ra1, ra2, wa3;
  logic[63:0] wd3;
  logic clk, we3;

  wd3 = 0000000000000000000000000000000000000000000000000000000000000000;
  ra1 = 00000;
  ra2 = 00000;
  wa3 = 0;
  clk = 0;

  regfile reg(ra1,ra2,wa3,wd3,we3,clk);

	always #10 clk = ~clk;

endmodule