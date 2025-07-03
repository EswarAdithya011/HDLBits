module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0]prev_in;	 // Remembers the last thing 'in' said. Basically, this is the gossip from one clock ago.

    
    always @(posedge clk)	begin
        // First, we store the current input before we forget it — short-term memory problems? Solved.
        prev_in <= in;

        // Now for the real detective work: figure out which bits just flipped from 0 to 1.
        // Think of it as catching someone red-handed going from "Nah" to "Yeah".
        pedge <= in & (~prev_in);  // Classic bit-level betrayal detection.
    end

endmodule
