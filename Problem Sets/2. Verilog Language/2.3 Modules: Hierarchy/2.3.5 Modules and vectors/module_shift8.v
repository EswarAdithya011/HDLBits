module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]q0;
    wire [7:0]q1;
    wire [7:0]q2;
    reg [7:0]out;
  
    my_dff8 D0(.q(q0), .d(d), .clk(clk));
    my_dff8 D1(.q(q1), .d(q0), .clk(clk));
    my_dff8 D2(.q(q2), .d(q1), .clk(clk));
    
    always@ (*) begin
        case(sel)
            2'b00: out <= d;
            2'b01: out <= q0;
            2'b10: out <= q1;
            2'b11: out <= q2;            
        endcase
    end
    
    assign q = out;
    
endmodule
