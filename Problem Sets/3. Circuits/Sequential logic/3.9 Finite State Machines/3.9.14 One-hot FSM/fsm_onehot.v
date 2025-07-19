module top_module(
    input in,
    input [9:0] state,
    output [9:0] next_state,
    output out1,
    output out2);
	
    parameter S0 = 0;
    parameter S1 = 1;
    parameter S2 = 2;
    parameter S3 = 3;
    parameter S4 = 4;
    parameter S5 = 5;
    parameter S6 = 6;
    parameter S7 = 7;
    parameter S8 = 8;
    parameter S9 = 9;
    
    always @(*)	begin
        next_state[S0] = (state[0] | state[1] | state[2] | state[3] | state[4] | state[7] | state[8] | state[9]) & ~in;
        next_state[S1] = (state[0] | state[8] | state[9]) & in;
        next_state[S2] = state[1] & in;
        next_state[S3] = state[2] & in;
        next_state[S4] = state[3] & in;
        next_state[S5] = state[4] & in;
        next_state[S6] = state[5] & in;
        next_state[S7] = (state[7] | state[6]) & in;
        next_state[S8] = state[5] & ~in;
        next_state[S9] = state[6] & ~in;   
    end
    
    assign out1 = state[8] | state[9],
           out2 = state[7] | state[9];
    
endmodule
