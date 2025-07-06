module top_module (
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q
);

    always @(posedge clk) begin
        if (reset)
            q <= 0;	        // Reset: When things get messy, just start over — like debugging at 3 AM
        else if (slowena) begin
            if (q == 4'd9)
                q <= 0;
            else
                q <= q + 1;
        end
        else
            q <= q;	// Hold state: Pause the count, time to smell the logic gates
    end

endmodule
