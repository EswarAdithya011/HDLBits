module top_module(
    input clk,
    input in,
    input reset,
    output out); //

    // declaring state name params
    parameter [1:0] A = 2'b00;
    parameter [1:0] B = 2'b01;
    parameter [1:0] C = 2'b10;
    parameter [1:0] D = 2'b11;
    
    //declaring state variables
    reg [1:0]state, next_state;
    
    // State transition logic 
    // This can be combinational or sequential
    always @(*)	begin
        case(state)
        	A: next_state <= in ? B : A;
            B: next_state <= in ? B : C;
            C: next_state <= in ? D : A;
            D: next_state <= in ? B : C;
      default: next_state <= A;            
        endcase
    end
    
    // State flip-flops with asynchronous reset or State Register Logic
    always @(posedge clk)	begin
        if(reset)
            state <= A;
        else
            state <= next_state;
    end
    
    // Output logic
    assign out = (state == D);
    
endmodule
