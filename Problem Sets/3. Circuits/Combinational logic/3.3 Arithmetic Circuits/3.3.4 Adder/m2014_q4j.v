module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    wire [4:0] carry_int;
    genvar i;

    assign carry_int[0] = 1'b0; 

    generate 
        for(i = 0; i <= 3; i = i + 1) begin : saradaki
            FA inst (
                .a(x[i]),
                .b(y[i]),
                .cin(carry_int[i]),
                .sum(sum[i]),
                .cout(carry_int[i + 1])
            );
        end
    endgenerate

    assign sum[4] = carry_int[4];
    
endmodule

module FA( 
    input a, b, cin,
    output cout, sum );
    
    assign {cout, sum} = a + b + cin;

endmodule
