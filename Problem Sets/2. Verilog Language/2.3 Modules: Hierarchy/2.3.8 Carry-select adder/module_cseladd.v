module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]sum1, sum2;
    wire [15:0]up_sum, down_sum;
    wire cout_transition;
    
    add16 inst_add0(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum1), .cout(cout_transition));
    
    add16 inst_add1(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(up_sum), .cout());
    add16 inst_add2(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(down_sum), .cout());
    
    assign sum2 = (cout_transition) ? down_sum : up_sum;
    assign sum = {sum2,sum1};

endmodule
