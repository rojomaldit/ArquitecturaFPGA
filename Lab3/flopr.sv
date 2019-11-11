module flopr #(parameter SIZE = 64) (input logic clk,input logic reset,
																		 input logic [SIZE-1:0]d,
																		 output logic [SIZE-1:0]q);

	always_ff @(posedge clk, posedge reset)
		if (reset) q <= '0;
		else q <= d;

endmodule