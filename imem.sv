module imem #(parameter SIZE = 32) (input logic[5:0] addr,
                                    output logic [SIZE-1:0]q
                                   );
  logic[SIZE-1:0] aux = 0;
  always_comb
  case(addr)
    'h00: aux = 'hf8000000;
    'h01: assign aux = 'hf8008001;
    'h02: assign aux = 'hf8010002;
    'h03: assign aux = 'hf8018003;
    'h04: assign aux = 'hf8020004;
    'h05: assign aux = 'hf8028005;
    'h06: assign aux = 'hf8030006;
    'h07: assign aux = 'hf8400007;
    'h08: assign aux = 'hf8408008;
    'h09: assign aux = 'hf8410009;
    'h0A: assign aux = 'hf841800a;
    'h0B: assign aux = 'hf842000b;
    'h0C: assign aux = 'hf842800c;
    'h0D: assign aux = 'hf843000d;
    'h0E: assign aux = 'hcb0e01ce;
    'h0F: assign aux = 'hb400004e;
    'h10: assign aux = 'hcb01000f;
    'h11: assign aux = 'h8b01000f;
    'h12: assign aux = 'hf803800f;
    default: assign aux = 0;
  endcase

  assign q = aux;

endmodule