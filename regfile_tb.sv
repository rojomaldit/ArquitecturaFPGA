module regfile_tb();
  logic[4:0] ra1, ra2, wa3;
  logic[63:0] wd3;
  logic clk = 0;
  logic we3;

  regfile reg(ra1,ra2,wa3,wd3,we3,clk);