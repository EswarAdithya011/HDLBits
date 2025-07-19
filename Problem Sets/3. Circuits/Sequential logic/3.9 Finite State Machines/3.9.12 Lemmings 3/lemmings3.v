module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output reg walk_left,
    output reg walk_right,
    output reg aaah,
    output reg digging ); 

    // Declaring State Variables
    reg [2:0] state, next_state;
    
    // Declaring State parameters
    parameter LEFT   = 3'b000,
              RIGHT  = 3'b001,
              FALL_L = 3'b010,
              FALL_R = 3'b011,
              DIG_L  = 3'b100,
              DIG_R  = 3'b101;
            
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
            LEFT    : next_state = ~ground ? FALL_L : (dig ? DIG_L : (bump_left  ? RIGHT : LEFT)) ;
            RIGHT   : next_state = ~ground ? FALL_R : (dig ? DIG_R : (bump_right ? LEFT  : RIGHT));
            FALL_L  : next_state =  ground ? LEFT   : FALL_L;
            FALL_R  : next_state =  ground ? RIGHT  : FALL_R;
            DIG_L   : next_state = ~ground ? FALL_L : DIG_L;
            DIG_R   : next_state = ~ground ? FALL_R : DIG_R;
            default : next_state = LEFT;
        endcase
    end

    // Output Logic
    always @(*) begin
        // Default all outputs to 0
        walk_left  = 0;
        walk_right = 0;
        aaah       = 0;
        digging    = 0;

        case (state)
            LEFT   : walk_left  = 1'b1;
            RIGHT  : walk_right = 1'b1;
            FALL_L : aaah       = 1'b1;
            FALL_R : aaah       = 1'b1;
            DIG_L  : digging    = 1'b1;
            DIG_R  : digging    = 1'b1;
        endcase
    end

endmodule
