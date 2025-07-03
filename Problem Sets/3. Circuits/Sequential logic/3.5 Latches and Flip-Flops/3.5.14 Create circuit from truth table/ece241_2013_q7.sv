module top_module (
    input clk,
    input j,
    input k,
    output Q); 

    always_ff@ (posedge clk)	begin
        case({j,k})
            2'b00: Q <= Q;
            2'b01: Q <= 'b0;
            2'b10: Q <= 'b1;
            2'b11: Q <= ~Q;
          default: Q <= Q;
        endcase
    end
endmodule
