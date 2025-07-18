module top_module(
    input clk,
    input load,
    input ena,
    input [1:0] amount,
    input [63:0] data,
    output reg [63:0] q); 

    always @(posedge clk) begin
    if (load)
        q <= data;
    else if (ena) begin
        case (amount)
            2'b00: q <= q << 1; // Same as q <= q <<< 1; 
            2'b01: q <= q << 8; // Same as q <= q <<< 1;
            2'b10: q <= $signed(q) >>> 1; // arithmetic right shift by 1
            2'b11: q <= $signed(q) >>> 8; // arithmetic right shift by 8
        endcase
    end
end

endmodule
