module top_module (
    input clk,
    input shift_ena,
    input count_ena,
    input data,
    output [3:0] q);
    
    // Declaring a variable for shifting and counting
    reg [3:0] shift_count;
    
    always @(posedge clk) begin
        if      (shift_ena & !count_ena) begin
        	shift_count <= {shift_count[2:0], data};
        end
        else if (!shift_ena & count_ena) begin
        	shift_count <= shift_count - 4'd1;
        end
        else begin
        	shift_count <= shift_count;
        end
    end
    
    assign  q = shift_count;

endmodule
