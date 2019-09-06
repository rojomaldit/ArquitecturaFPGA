module alu_tb();
	logic [63:0] a,b,result,zero;
	logic [3:0] ALUC;
	alu test(a,b,ALUC,result,zero);
	initial begin
		a = 3; b = 3;
		ALUC = 4'b0000; #10;
		ALUC = 4'b0001; #10;
		ALUC = 4'b0010; #10;
		ALUC = 4'b0110; #10;
		ALUC = 4'b0111; #10;
		ALUC = 4'b1100; #10;
		ALUC = 4'b1111; #10;
		a = -3; b = 3;
		ALUC = 4'b0000; #10;
		ALUC = 4'b0001; #10;
		ALUC = 4'b0010; #10;
		ALUC = 4'b0110; #10;
		ALUC = 4'b0111; #10;
		ALUC = 4'b1100; #10;
		ALUC = 4'b1111; #10;
		a = 3; b = -3;
		ALUC = 4'b0000; #10;
		ALUC = 4'b0001; #10;
		ALUC = 4'b0010; #10;
		ALUC = 4'b0110; #10;
		ALUC = 4'b0111; #10;
		ALUC = 4'b1100; #10;
		ALUC = 4'b1111; #10;
		a = -3; b = -3;
		ALUC = 4'b0000; #10;
		ALUC = 4'b0001; #10;
		ALUC = 4'b0010; #10;
		ALUC = 4'b0110; #10;
		ALUC = 4'b0111; #10;
		ALUC = 4'b1100; #10;
		ALUC = 4'b1111; #10;
	end
endmodule
		