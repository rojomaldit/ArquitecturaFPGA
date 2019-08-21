module latch(	input logic set,reset,
					output logic q0,q1);
							
		
		assign q0 = mnor(q0 | set);
		assign q1 = mnor(q1 | reset);

endmodule
	