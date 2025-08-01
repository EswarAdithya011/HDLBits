module top_module (
    input clk,
    input reset,
    output [9:0] q);

    // Declaring Register to count no. of clock pulses
    reg [9:0] counter;
    
    // Counter Logic
    always @(posedge clk) begin
        if (reset || counter == 10'd999) begin
        	counter <= 10'b0;
        end
        else begin
        	counter <= counter + 10'b1;
        end
    end
    
    // Assigning count to the output
    assign q = counter;
    
endmodule
