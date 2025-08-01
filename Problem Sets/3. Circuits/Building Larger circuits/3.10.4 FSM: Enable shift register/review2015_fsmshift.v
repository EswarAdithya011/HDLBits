module top_module (
    input clk,
    input reset,      // Synchronous reset
    output shift_ena
);

    typedef enum logic [0:0] {
        IDLE = 1'b0,
        ACTIVATION = 1'b1
    } state_t;

    state_t state, next_state;
    reg [1:0] count;

    // State Register
    always @(posedge clk) begin
        if (reset)
            state <= ACTIVATION;  // Start with 4 cycles of enable
        else
            state <= next_state;
    end

    // Next State Logic
    always @(*) begin
        case (state)
            IDLE       : next_state = IDLE;
            ACTIVATION : next_state = (count == 2'd3) ? IDLE : ACTIVATION;
            default    : next_state = IDLE;
        endcase
    end

    // Counter Logic
    always @(posedge clk) begin
        if (reset) begin
            count <= 2'd0;
        end
        else if (state == ACTIVATION) begin
            count <= count + 1'b1;
        end
    end

    assign shift_ena = (state == ACTIVATION);

endmodule
