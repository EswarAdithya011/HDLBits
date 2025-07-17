module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output reg walk_left,
    output reg walk_right,
    output reg aaah ); 

    // Declaring States
    parameter LEFT   = 2'b00,
              RIGHT  = 2'b01,
              FALL_L = 2'b10,
              FALL_R = 2'b11;
    
    // Declaring State Variables
    reg [1:0] state, next_state;

    // State Register Logic
    always @(posedge clk or posedge areset) begin
        if (areset)
            state <= LEFT;
        else
            state <= next_state;
    end
    
    // State Transition Logic
    always @(*) begin
        case (state)    
            LEFT   : next_state = ~ground ? FALL_L : (bump_left  ? RIGHT : LEFT) ;
            RIGHT  : next_state = ~ground ? FALL_R : (bump_right ? LEFT  : RIGHT);
            FALL_L : next_state =  ground ? LEFT   : FALL_L;
            FALL_R : next_state =  ground ? RIGHT  : FALL_R;
            default: next_state = LEFT;
        endcase
    end

    // Output Logic
    always @(*) begin
        // Default all outputs to 0
        walk_left  = 1'b0;
        walk_right = 1'b0;
        aaah       = 1'b0;

        case (state)
            LEFT   : walk_left  = 1'b1;
            RIGHT  : walk_right = 1'b1;
            FALL_L : aaah       = 1'b1;
            FALL_R : aaah       = 1'b1;
        endcase
    end

endmodule
