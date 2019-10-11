module imem #(parameter SIZE = 32) (input logic[5:0] addr,
                                    output logic [SIZE-1:0]q
                                   );
  logic[SIZE-1:0] aux = 0;
  always_comb
  case(addr)
    'h00: aux = 'hf8000000;
    'h01: aux = 'hf8008001;
    'h02: aux = 'hf8010002;
    'h03: aux = 'hf8018003;
    'h04: aux = 'hf8020004;
    'h05: aux = 'hf8028005;
    'h06: aux = 'hf8030006;
    'h07: aux = 'hf8400007;
    'h08: aux = 'hf8408008;
    'h09: aux = 'hf8410009;
    'h0A: aux = 'hf841800a;
    'h0B: aux = 'hf842000b;
    'h0C: aux = 'hf842800c;
    'h0D: aux = 'hf843000d;
    'h0E: aux = 'hcb0e01ce;
    'h0F: aux = 'hb400004e;
    'h10: aux = 'hcb01000f;
    'h11: aux = 'h8b01000f;
    'h12: aux = 'hf803800f;
    default: aux = 0;
  endcase

    assign q = aux;

endmodule