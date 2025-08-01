module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output reg start_shifting
);

    // State parameters
    parameter [2:0] IDLE     = 3'b000,
                    S1       = 3'b001,
                    S11      = 3'b010,
                    S110     = 3'b011,
                    DETECTED = 3'b100;

    reg [2:0] state, next_state;

    // State transition logic
    always @(*) begin
        case (state)
            IDLE    : next_state = data ? S1 : IDLE;
            S1      : next_state = data ? S11 : IDLE;
            S11     : next_state = data ? S11 : S110;
            S110    : next_state = data ? DETECTED : IDLE;
            DETECTED: next_state = DETECTED;
            default : next_state = IDLE;
        endcase
    end

    // State register
    always @(posedge clk) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Output logic
    always @(*) begin
        start_shifting = (state == DETECTED);
    end

endmodule
