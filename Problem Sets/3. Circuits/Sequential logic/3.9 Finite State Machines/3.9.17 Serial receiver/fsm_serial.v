module top_module (
    input clk,
    input in,
    input reset,      // Synchronous reset
    output done
);

    // State Definitions
    parameter [1:0] IDLE    = 2'b00,
                    DATA_RX = 2'b01,
                    DONE    = 2'b10,
                    WAIT    = 2'b11;

    reg [1:0] state, next_state;
    reg [3:0] bit_count;

    // Next State Logic
    always @(*) begin
        case (state)
            IDLE: 
                next_state = (~in) ? DATA_RX : IDLE;

            DATA_RX: 
                if (bit_count == 4'd8)
                    next_state = (in) ? DONE : WAIT;
                else
                    next_state = DATA_RX;

            DONE: 
                next_state = (~in) ? DATA_RX : IDLE;

            WAIT: 
                next_state = (in) ? IDLE : WAIT;

            default: 
                next_state = IDLE;
        endcase
    end

    // State Register
    always @(posedge clk) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Bit Counter Logic
    always @(posedge clk) begin
        if (reset)
            bit_count <= 4'd0;
        else if (state == DATA_RX)
            bit_count <= bit_count + 4'd1;
        else
            bit_count <= 4'd0;
    end

    // Output
    assign done = (state == DONE);

endmodule
