module top_module (input x, input y, output z);
wire [1:0]w;

    top_module_A inst0(x, y, w[0]);
    top_module_B inst1(x, y, w[1]);
    
    assign z = (w[0] & w[1]) ^ (w[0] | w[1]);
    
endmodule

module top_module_A (input x, input y, output z);

    assign  z = (x ^ y) & x;
    
endmodule

module top_module_B ( input x, input y, output z );

    xnor(z, x, y);
    
endmodule
