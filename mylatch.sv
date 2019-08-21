module mylatch(	input logic set,reset,
					output logic q0,q1);
						
			
			
		mnor nor0(set,q1,q0);
		mnor nor1(q0,reset,q1);
		
endmodule
	