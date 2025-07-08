module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);

    assign ena = {(q[11:8] == 4'd9) && (q[7:4] == 4'd9) && (q[3:0] == 4'd9), 
                  (q[7:4] == 4'd9) && (q[3:0] == 4'd9),
                  (q[3:0] == 4'd9)};
    
    always @(posedge clk)	begin
        if(reset)	
            q <= 0;
        else	begin
            // First digit always counts
            if(q[3:0] == 4'd9)
                	q[3:0] <= 4'd0;
            else
              	    q[3:0] <= q[3:0] + 1'b1;	// Keep pushing forward
            
            // Second digit (q[7:4])
            if(ena[1]) begin
                if(q[7:4] == 4'd9)
                    q[7:4] <= 4'd0;
                else
                    q[7:4] <= q[7:4] + 1'b1;	// Count your tens, one step at a time
            end
            
            // Third digit (q[11:8])
            if(ena[2])	begin
                if(q[11:8] == 4'd9)
                    q[11:8] <= 4'd0;	// Same old rollover story
                else
                    q[11:8] <= q[11:8] + 1'b1;	
            end
            
            // Fourth digit (q[15:12])
            if(ena[3])	begin
                if(q[15:12] == 4'd9)
                    q[15:12] <= 4'd0;	// You shall not pass 9999
                else
                    q[15:12] <= q[15:12] + 1'b1; 
            end
        end
    end
                    
endmodule
