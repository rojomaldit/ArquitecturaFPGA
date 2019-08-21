module flopr_tb();
	logic clk,reset;
	logic [63:0]d,q;
	
	flopr test(clk,reset,d,q);
	initial begin 
			clk = 0;
			reset = 0;
	end
	always #5 clk = ~clk;
	
	initial begin	
		for(int i = 0; i<64;i++) begin
			d = i; 		#10;
		end
	end
endmodule
	