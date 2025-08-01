module top_module (
    input clk,
    input reset,             // Synchronous reset
    input data,
    output [3:0] count,
    output counting,
    output done,
    input ack
);

    // State Declarations
    parameter [3:0]
        S0    = 4'b0000,
        S1    = 4'b0001,
        S2    = 4'b0010,
        S3    = 4'b0011,
        B0    = 4'b0100,
        B1    = 4'b0101,
        B2    = 4'b0110,
        B3    = 4'b0111,
        COUNT = 4'b1000,
        WAIT  = 4'b1001;

    reg [3:0] state;
    reg [3:0] next_state;

    // State Transition Logic
    always @(*) begin
        case (state)
            S0: begin
                if (data)
                    next_state = S1;
                else
                    next_state = S0;
            end
            S1: begin
                if (data)
                    next_state = S2;
                else
                    next_state = S0;
            end
            S2: begin
                if (data)
                    next_state = S2;
                else
                    next_state = S3;
            end
            S3: begin
                if (data)
                    next_state = B0;
                else
                    next_state = S0;
            end
            B0: begin
                next_state = B1;
            end
            B1: begin
                next_state = B2;
            end
            B2: begin
                next_state = B3;
            end
            B3: begin
                next_state = COUNT;
            end
            COUNT: begin
                if (done_counting)
                    next_state = WAIT;
                else
                    next_state = COUNT;
            end
            WAIT: begin
                if (ack)
                    next_state = S0;
                else
                    next_state = WAIT;
            end
            default: begin
                next_state = S0;
            end
        endcase
    end

    // Output assignments
    assign done = (state == WAIT);
    assign counting = (state == COUNT);
    assign count = q_des;

    wire shift_ena;
    assign shift_ena = (state == B0) || (state == B1) || (state == B2) || (state == B3);

    wire count_ena;
    assign count_ena = (q_count == 10'd999) && (state == COUNT);

    wire done_counting;
    assign done_counting = (q_count == 10'd999) && (q_des == 4'd0);

    // Destination countdown register (4-bit delay)
    reg [3:0] q_des;

    always @(posedge clk) begin
        if (!shift_ena && !count_ena) begin
            q_des <= q_des;
        end else if (shift_ena && !count_ena) begin
            q_des <= {q_des[2:0], data};
        end else if (!shift_ena && count_ena) begin
            q_des <= q_des - 4'd1;
        end else begin
            q_des <= q_des;
        end
    end

    // 1000-cycle inner counter
    reg [9:0] q_count;

    always @(posedge clk) begin
        if (reset) begin
            q_count <= 10'd0;
        end else if ((state == COUNT) && (q_count < 10'd999)) begin
            q_count <= q_count + 10'd1;
        end else begin
            q_count <= 10'd0;
        end
    end

    // Sequential state update
    always @(posedge clk) begin
        if (reset) begin
            state <= S0;
        end else begin
            state <= next_state;
        end
    end

endmodule
