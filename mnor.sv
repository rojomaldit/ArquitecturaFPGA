module mnor(input logic a,b,
				output logic c);
				
				assign c = ~(a|b);
endmodule