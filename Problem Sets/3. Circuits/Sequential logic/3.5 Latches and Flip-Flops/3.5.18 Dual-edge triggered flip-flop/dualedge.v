module top_module (
    input clk,
    input d,
    output q
);
    reg [1:0] q_temp;
    always @(posedge clk)	
        q_temp[0] <= d;
    
    always @(negedge clk)
        q_temp[1] <= d;
    
    always @(*)	
        if(clk)
            q <= q_temp[0];
    	else
            q <= q_temp[1];
    
endmodule
