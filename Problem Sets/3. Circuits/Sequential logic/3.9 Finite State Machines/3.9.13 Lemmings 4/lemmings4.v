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
    
    // Declaring a counter to count 20 clock pulses
    reg [4:0] counter;						// Count how long Lemmings scream while falling
    
    // Declaring State parameters
    parameter LEFT   = 3'b000,
              RIGHT  = 3'b001,
              FALL_L = 3'b010,
              FALL_R = 3'b011,
              DIG_L  = 3'b100,
              DIG_R  = 3'b101,
              SPLAT  = 3'b110;
            
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
            FALL_L  : next_state = ~ground ? FALL_L : (counter > 5'd19 ? SPLAT : LEFT);
            FALL_R  : next_state = ~ground ? FALL_R : (counter > 5'd19 ? SPLAT : RIGHT);
            DIG_L   : next_state = ~ground ? FALL_L : DIG_L;
            DIG_R   : next_state = ~ground ? FALL_R : DIG_R;
            SPLAT   : next_state = SPLAT;						// the end...
            default : next_state = LEFT;
        endcase
    end

    // Counter Logic
    always @(posedge clk) begin
        if (areset)
            counter <= 5'd0;
        else if (state == FALL_L || state == FALL_R)
            counter <= (counter < 5'd20) ? counter + 1'b1 : 5'd20;
        else
            counter <= 5'd0;
    end
    
    // Output Combinational Logic
    always @(*) begin
		// All zeros—because latches love surprises
        walk_left  = 1'b0;
        walk_right = 1'b0;
        aaah       = 1'b0;
        digging    = 1'b0;

        case (state)
            LEFT    : walk_left  = 1'b1;
            RIGHT   : walk_right = 1'b1;
            FALL_L  : aaah       = 1'b1;
            FALL_R  : aaah       = 1'b1;
            DIG_L   : digging    = 1'b1;
            DIG_R   : digging    = 1'b1;
            SPLAT   : {walk_left, walk_right, aaah, digging} = 4'b0000;		// *crickets*
        endcase
    end

endmodule
