module imem_tb();
	logic [31:0]out;
	logic [5:0]addr;
	
	imem test(addr,out);
	
	initial begin
		for(int i = 0; i < 25; i++) begin
			addr = i;#5;
		end
	end
endmodule
