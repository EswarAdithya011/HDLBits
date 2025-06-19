module top_module( 
    input [2:0] in,
    output [1:0] out );

    reg [1:0] count;
    always @(*) begin
        count = 2'b0;
        
        if (in[2])
            count = count + 2'b1;
        if (in[1])
            count = count + 2'b1;
        if (in[0])
            count = count + 2'b1;
    end
    
    assign out = count;
    
endmodule
