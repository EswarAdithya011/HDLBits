module top_module (
    input clk,
    input aresetn,    // Asynchronous active-low reset
    input x,
    output z ); 

    // Declaring States variables
    reg [1:0] state, next_state;
    
    // Declaring State Param's
    parameter [1:0] S0 = 2'b00;
    parameter [1:0] S1 = 2'b01;
    parameter [1:0] S2 = 2'b10;
    parameter [1:0] S3 = 2'b11;
    
    // State Register logic
    always @(posedge clk or negedge aresetn)	begin
        if (~aresetn)	begin
        	state <= S0;
        end
        else	begin
        	state <= next_state;
        end
    end
    
    // State Transition Logic
    always @(*)	begin
        case (state)	
                S0: next_state <= x ? S1 : S0;
                S1: next_state <= x ? S1 : S2;
                S2: next_state <= x ? S1 : S0;
           default: next_state <= S0;
        endcase
    end
    
    assign z = (state == S2 && x);
    
endmodule
