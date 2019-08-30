module fetch_tb();
	logic PCSRC = 0,clk = 0,reset;
	logic [63:0] PCBRANCH = 'hf8000000, IMEMADDR;
	
	fetch test(PCSRC,clk,reset,PCBRANCH,IMEMADDR);
	always begin
		clk = ~clk; #5ns;
	end
	
	initial begin 
		reset = 1;#50ns;
		reset = 0;#50ns;
		PCSRC = 1;#20ns
		$stop;
	end
endmodule
