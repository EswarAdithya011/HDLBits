module top_module(
    input clk,
    input in,
    input reset,          // Synchronous reset
    output reg [7:0] out_byte,
    output done
);

    // FSM State Definitions
    typedef enum logic [1:0] {
        IDLE    = 2'b00,   // Waiting for start bit
        DATA_RX = 2'b01,   // Receiving 8 data bits
        DONE    = 2'b10,   // Valid stop bit received
        WAIT    = 2'b11    // Invalid stop bit, wait for line to go high
    } state_t;

    state_t state, next_state;

    reg [3:0] bit_cnt;
    reg [7:0] shift_reg;

    // FSM Next State Logic
    always @(*) begin
        case (state)
            IDLE:    next_state = ~in ? DATA_RX : IDLE;
            DATA_RX: next_state = (bit_cnt == 4'd8) ? (in ? DONE : WAIT) : DATA_RX;
            DONE:    next_state = ~in ? DATA_RX : IDLE;
            WAIT:    next_state = in ? IDLE : WAIT;
            default: next_state = IDLE;
        endcase
    end

    // Bit Counter
    always @(posedge clk) begin
        if (reset)
            bit_cnt <= 4'd0;
        else if (state == DATA_RX)
            bit_cnt <= bit_cnt + 1;
        else
            bit_cnt <= 4'd0;
    end

    // FSM State Register
    always @(posedge clk) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Shift Register for Incoming Serial Bits
    always @(posedge clk) begin
        if (reset)
            shift_reg <= 8'd0;
        else if (state == DATA_RX)
            shift_reg <= {in, shift_reg[7:1]};  // LSB first
    end

    // Latch final byte at DONE state
    always @(posedge clk) begin
        if (reset)
            out_byte <= 8'd0;
        else if (next_state == DONE)
            out_byte <= shift_reg;
    end

    assign done = (state == DONE);

endmodule
