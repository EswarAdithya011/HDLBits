module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] prev_in;
    always @(posedge clk)	begin
    	prev_in <= in;
        if(reset)
            out <= 0; 	// Someone hit the reset button! All bits, back to your zeros!
        else 
            // If a bit was 1 and suddenly became 0 (the betrayal!), we flag it forever.
			// 'out' keeps all previous traitors (1→0 transitions), and adds any new ones this cycle.
            out <= out | (~in & prev_in);
    end
    
endmodule
