module top_module (
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
