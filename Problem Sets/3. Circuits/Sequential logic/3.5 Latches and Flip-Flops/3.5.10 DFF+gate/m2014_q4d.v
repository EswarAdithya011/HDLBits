module top_module (
    input clk,
    input in, 
    output out);
wire w;
    always@ (posedge clk)
        out <= w;
    
    assign w = in ^ out;
        
endmodule
