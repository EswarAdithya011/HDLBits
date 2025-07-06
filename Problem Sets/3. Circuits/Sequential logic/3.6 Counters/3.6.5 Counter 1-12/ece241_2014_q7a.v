module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
);

    count4 the_counter (
        .clk(clk),
        .enable(c_enable),
        .load(c_load),
        .d(c_d),
        .Q(Q)
    );
    
	assign c_enable = (reset) ? 0 : enable;
    assign c_load   = reset ? 1 : ((Q == 4'd12) && c_enable);
    assign c_d      = 4'd1;
    
endmodule
