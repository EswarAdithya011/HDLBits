module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
	
    wire [4:0] in_changed = {in[0], in};
    integer i;
    always @(*)	begin
        for(i = 0; i < 3; i = i + 1)	begin
            out_both[i]       = in[i] && in[i + 1];
            out_any[i + 1]    = in[i + 1] || in[i];
        end
        for(i = 0; i < 4; i = i + 1)	
            out_different[i] = in_changed[i] ^ in_changed[i + 1];
        
    end
    // assign out_different = in ^ in_changed[4:1];  
    
endmodule
