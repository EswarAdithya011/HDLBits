module top_module (
    input clk,
    input reset,      // Synchronous reset
    input data,
    output shift_ena,
    output counting,
    input done_counting,
    output done,
    input ack );

    typedef enum logic [3:0] {
        S = 4'd0, S1, S11, S110,
        B0, B1, B2, B3,
        Count, 
        Wait
    } timer_states;
    
    timer_states state, next_state;
    
    // State Register Logic
    always @(posedge clk) begin
        if (reset) begin
        	state <= S;
        end
        else begin
        	state <= next_state;
        end
    end
    
    // Next State Combinational Logic
    always @(*) begin
        case (state) 
            S 		: next_state <= data ? S1  : S;
            S1 		: next_state <= data ? S11 : S;
            S11 	: next_state <= data ? S11 : S110;
            S110 	: next_state <= data ? B0  : S;
            B0 		: next_state <= B1;
            B1 		: next_state <= B2;
            B2 		: next_state <= B3;
            B3 		: next_state <= Count;
            Count 	: next_state <= done_counting ? Wait : Count;
            Wait    : next_state <= ack			  ? S    : Wait;
            default : next_state <= S;
        endcase
    end
   
   //Output Logic
   assign shift_ena = (state == B0) || (state == B1) || (state == B2)|| (state == B3);
   assign counting  = state == Count;
   assign done 	    = state == Wait;
            
endmodule
