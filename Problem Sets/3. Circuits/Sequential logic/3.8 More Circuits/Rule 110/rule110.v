module top_module(
    input clk,
    input load,
    input [511:0] data,
    output reg [511:0] q
); 
    reg [511:0]L, C, R;
    always @(posedge clk) begin
        if (load)
            q <= data;	// Just load it. Easy part.
        else begin
            // Brace yourself... the cellular chaos begins.
            L = {1'b0, q[511:1]};	   // Left neighbors. Yeah, q[-1] is always 0.
            C = q;					   // The current mess... I mean state.
            R = {q[510:0], 1'b0};      // Right neighbors.
            
            // Feels like I XOR-ed my patience and OR-ed my sleep with caffeine.
            q <= (C ^ R) | (~L & R);	// Rule 110 decoded after burning my neurons.
        end
    end
    
endmodule
