module alu_tb();
	logic [63:0] a,b;
	logic [3:0]ALUControl;
	logic [63: 0]result, zero;

	ALU test(a, b, ALUControl, result, zero);

	initial begin
		a = 64'b0 + 3;
		b = 64'b0 + 3;
		ALUControl = 4'b0000; #10;
		ALUControl = 4'b0001; #10;
		ALUControl = 4'b0010; #10;
		ALUControl = 4'b0110; #10;
		ALUControl = 4'b0111; #10;
		ALUControl = 4'b1100; #10;
		ALUControl = 4'b1111; #10;
	end
endmodule
	
	

