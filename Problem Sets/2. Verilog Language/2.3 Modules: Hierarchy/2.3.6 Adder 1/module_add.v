module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [31:0]sum_temp;
    wire carry_temp;
    
    add16 inst_add0(.sum(sum_temp[15:0]), 
                    .a(a[15:0]), 
                    .b(b[15:0]), 
                    .cin(1'b0), 
                    .cout(carry_temp));
    
    add16 inst_add1(.sum(sum_temp[31:16]), 
                    .a(a[31:16]), 
                    .b(b[31:16]), 
                    .cin(carry_temp), 
                    .cout());
    
    assign sum = sum_temp;
    
endmodule
