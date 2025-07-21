module top_module (
    input clk,
    input [7:0] in,
    input reset,       // Synchronous reset
    output reg done
);

    typedef enum logic [1:0] {
        IDLE  = 2'd0,
        BYTE1 = 2'd1,
        BYTE2 = 2'd2,
        BYTE3 = 2'd3
    } state_t;

    state_t state, next_state;

    // State Register
    always_ff @(posedge clk) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Next State Logic
    always_comb begin
        case (state)
            IDLE:  next_state = in[3] ? BYTE1 : IDLE;
            BYTE1: next_state = BYTE2;
            BYTE2: next_state = BYTE3;
            BYTE3: next_state = in[3] ? BYTE1 : IDLE;
            default: next_state = IDLE;
        endcase
    end

    // Output Logic
    always_comb begin
        done = (state == BYTE3);
    end

endmodule
