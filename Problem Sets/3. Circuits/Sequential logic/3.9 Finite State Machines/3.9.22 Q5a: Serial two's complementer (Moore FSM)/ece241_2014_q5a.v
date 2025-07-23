module top_module (
    input        clk,
    input        areset,
    input        x,
    output       z
);

    parameter [0:0] PASS = 1'b0,
                    INV  = 1'b1;

    reg state, next_state;
	reg x_d;
    
    // State Register
    always @(posedge clk or posedge areset)
        begin
            if (areset)	begin
                state <= PASS;
            	x_d   <= 1'b0;
            end
            else	begin
                state <= next_state;
                x_d   <= x;
            end
        end

    // Next State Logic
    always @(*)
        begin
            case (state)
                PASS : next_state <= (x_d == 1'b1) ? INV : PASS;
                INV  : next_state <= INV;
            endcase
        end

    // Output Logic (Moore output)
    assign z = (state == PASS) ? x_d : ~x_d;

endmodule
