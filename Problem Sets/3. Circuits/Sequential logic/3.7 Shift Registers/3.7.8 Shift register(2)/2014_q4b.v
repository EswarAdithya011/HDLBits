module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //

    MUXDFF instance0 (.clk(KEY[0]), .w(KEY[3]), .R(SW[3]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[3]));
    MUXDFF instance1 (.clk(KEY[0]), .w(LEDR[3]), .R(SW[2]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[2]));
    MUXDFF instance2 (.clk(KEY[0]), .w(LEDR[2]), .R(SW[1]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[1]));
    MUXDFF instance3 (.clk(KEY[0]), .w(LEDR[1]), .R(SW[0]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[0]));
	
endmodule


module MUXDFF (
    input clk,
    input w, R, E, L,
    output Q
);
	wire mux_out1, mux_out2;
    always @(*)	begin
        if (L)	
        	mux_out1 = R;
        else begin
            if(E)
               mux_out2 = w;
            else
               mux_out2 = Q;
          mux_out1 = mux_out2;
		end
    end
    
    always @(posedge clk)	begin
    	Q <= mux_out1;
    end
    
endmodule
