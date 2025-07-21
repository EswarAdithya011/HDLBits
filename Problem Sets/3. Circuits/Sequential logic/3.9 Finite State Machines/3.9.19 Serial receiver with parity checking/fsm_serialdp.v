module top_module(
    input clk,
    input in,
    input reset,          // Synchronous reset
    output reg [7:0] out_byte,
    output done
);

    parameter [2:0]
        IDLE     = 3'b000,
        DATA_RX  = 3'b001,
        DONE     = 3'b010,
        NOT_DONE = 3'b011,
        WAIT     = 3'b100;

    reg [2:0] state, next_state;
    reg [3:0] count;

    // State Register
    always @(posedge clk) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Counter for 9 bits (8 data + 1 parity)
    always @(posedge clk) begin
        if (reset)
            count <= 0;
        else if (state == DATA_RX)
            count <= count + 1;
        else
            count <= 0;
    end

    // Parity module
    wire odd;
    parity p1 (
        .clk(clk),
        .reset(state != DATA_RX),
        .in(in),
        .odd(odd)
    );

    // FSM Next State Logic
    always @(*) begin
        case (state)
            IDLE: 
                next_state = (in == 0) ? DATA_RX : IDLE;
            DATA_RX: begin
                if (count == 4'd9) begin
                    if (in == 1 && odd)
                        next_state = DONE;
                    else if (in == 1 && !odd)
                        next_state = NOT_DONE;
                    else
                        next_state = WAIT;
                end else
                    next_state = DATA_RX;
            end
            DONE, NOT_DONE:
                next_state = (in == 0) ? DATA_RX : IDLE;
            WAIT:
                next_state = (in == 1) ? IDLE : WAIT;
            default:
                next_state = IDLE;
        endcase
    end

    // Data shift register (MSB first)
    always @(posedge clk) begin
        if (reset)
            out_byte <= 8'd0;
        else if (state == DATA_RX && count < 4'd8)
            out_byte <= {in, out_byte[7:1]};
    end

    assign done = (state == DONE);

endmodule
