module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    wire [100:0]carry;
    
    assign carry[0] = cin;
    
    full_adder fa_array [99:0] (
        .a    (a),
        .b    (b),
        .cin  (carry[99:0]),
        .sum  (sum[99:0]),
        .cout (carry[100:1])
    );
    
    assign cout = carry[100:1];
endmodule

module full_adder (
    input a, b,
    input cin,
	output sum,
    output cout);
    
    assign {cout, sum} = a + b + cin;

endmodule
