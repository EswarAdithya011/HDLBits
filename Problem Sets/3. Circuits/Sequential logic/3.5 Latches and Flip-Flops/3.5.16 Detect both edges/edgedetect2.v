module top_module (
    input clk,
    input [7:0] in,
    output reg [7:0] anyedge
);
    reg [7:0] prev_in;  // Holds the previous state of 'in'. Basically, the circuit’s way of saying "I remember..."

    always @(posedge clk) begin
        // Save current input for next round of detective work.
        prev_in <= in;

        // XOR tells us if anything changed – up or down. Rising, falling, emotional swings – we catch them all.
        // It's like a drama detector. Any change? Boom. Flag it.
        anyedge <= in ^ prev_in;
    end

endmodule
