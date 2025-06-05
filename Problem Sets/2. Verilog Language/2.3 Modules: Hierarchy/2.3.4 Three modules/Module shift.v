module top_module ( input clk, input d, output q );
wire w[1:0];
    
    my_dff d0(.q(w[0]), .d(d), .clk(clk));
    my_dff d1(.q(w[1]), .d(w[0]), .clk(clk));
    my_dff d2(.q(q), .d(w[1]), .clk(clk));
    
endmodule
