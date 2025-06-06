module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [31:0]sum_temp;
    wire cin_temp;
    
    add16 add_0(.a(a[15:0]), 
                .b(b[15:0]), 
                .cin(1'b0), 
                .sum(sum_temp[15:0]),
                .cout(cin_temp));
    
    add16 add_1(.a(a[31:16]), 
                .b(b[31:16]), 
                .cin(cin_temp), 
                .sum(sum_temp[31:16]),
                .cout());
    
    assign sum = sum_temp;
        
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here

    assign {cout,sum} = a + b + cin;
    
endmodule
