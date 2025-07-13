module top_module(
    input clk,
    input load,
    input [511:0] data,
    output reg [511:0] q 
); 
    
    reg [511:0] next_q;
    integer i;

    always @(posedge clk) begin
        if (load)
            q <= data;
        else begin
            next_q[0]    = q[1] ^ 1'b0;        // left boundary
            next_q[511]  = q[510] ^ 1'b0;      // right boundary
            
            for (i = 1; i < 511; i = i + 1)
                next_q[i] = q[i - 1] ^ q[i + 1]; // rule-90: XOR neighbors
            
            q <= next_q; // update output at end of cycle
        end
    end

endmodule
