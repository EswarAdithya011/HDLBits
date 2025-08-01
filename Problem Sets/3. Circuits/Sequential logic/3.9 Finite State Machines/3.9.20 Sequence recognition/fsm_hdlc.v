module top_module(
    input clk,
    input reset,    // Synchronous reset
    input in,
    output disc,
    output flag,
    output err);

    typedef enum logic [3:0]{
        NONE = 4'd0,
        ONE, TWO, THREE, FOUR, FIVE, SIX, DISCARD, FLAG, ERROR
    }state_t;
    
    state_t state, next_state;
    
    always@ (posedge clk) begin
        if(reset) begin
        	state <= NONE;
        end
        else begin
        	state <= next_state;
        end
    end
    z
    always@ (*) begin
        case(state)
        	NONE	: next_state <= in ? ONE   	: NONE;
            ONE		: next_state <= in ? TWO 	: NONE;
            TWO		: next_state <= in ? THREE 	: NONE;
            THREE	: next_state <= in ? FOUR 	: NONE;
            FOUR	: next_state <= in ? FIVE 	: NONE;
            FIVE	: next_state <= in ? SIX 	: DISCARD;
            SIX		: next_state <= in ? ERROR 	: FLAG;
            DISCARD	: next_state <= in ? ONE 	: NONE;
            FLAG 	: next_state <= in ? ONE 	: NONE;
            ERROR	: next_state <= in ? ERROR 	: NONE;
            default : next_state <= NONE;
        endcase
    end
    
    assign disc = (state == DISCARD);
    assign flag = (state == FLAG);
    assign err  = (state == ERROR);

endmodule
