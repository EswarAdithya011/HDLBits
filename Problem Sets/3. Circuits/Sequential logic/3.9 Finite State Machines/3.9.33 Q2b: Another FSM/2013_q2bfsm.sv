module top_module(
    input        clk,
    input        resetn,   // active-low synchronous reset
    input        x,
    input        y,
    output logic f,
    output logic g
);

    // State parameters
    parameter logic [3:0]
        S_A    = 4'd0,
        S_B    = 4'd1,
        S_S0   = 4'd2,
        S_S1   = 4'd3,
        S_S2   = 4'd4,
        S_Y1   = 4'd6,
        S_Y2A  = 4'd7,
        S_Y2B  = 4'd8,
        S_G0   = 4'd9,
        S_G1   = 4'd10;

    logic [3:0] state, next_state;

    // Next-state logic
    always_comb begin
        case (state)
            S_A:    next_state = S_B;
            S_B:    next_state = S_S0;
            S_S0:   next_state = (x) ? S_S1 : S_S0;
            S_S1:   next_state = (x) ? S_S1 : S_S2;
            S_S2:   next_state = (x) ? S_Y1  : S_S0;
            S_Y1:   next_state = (y) ? S_Y2A : S_Y2B;
            S_Y2A:  next_state = S_G1;
            S_Y2B:  next_state = (y) ? S_G1  : S_G0;
            S_G0:   next_state = S_G0;
            S_G1:   next_state = S_G1;
            default:next_state = S_A;
        endcase
    end

    // State register
    always_ff @(posedge clk) begin
        if (!resetn)
            state <= S_A;
        else
            state <= next_state;
    end

    // Output logic
    assign f = (state == S_B);
    assign g = (state == S_Y1) || (state == S_Y2A) || (state == S_Y2B) || (state == S_G1);

endmodule
