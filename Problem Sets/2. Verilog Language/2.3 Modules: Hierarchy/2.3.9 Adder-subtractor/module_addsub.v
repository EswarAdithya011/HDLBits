module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
wire sum1;
wire sum2;
wire cin_transition;
    
    add16 inst_add0(.a(a[15:0]), .b(b[15:0] ^ {16{sub}}), .cin(sub), .sum(sum[15:0]), .cout(cin_transition));
    add16 inst_add1(.a(a[31:16]), .b(b[31:16] ^ {16{sub}}), .cin(cin_transition), .sum(sum[31:16]));
    
endmodule
