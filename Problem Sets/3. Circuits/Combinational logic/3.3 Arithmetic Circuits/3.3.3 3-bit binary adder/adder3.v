module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    // First full adder (no generate needed here)
    full_adder inst0 (
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(cout[0])
    );

    // Generate block for the remaining adders
    genvar i;
    generate
        for (i = 1; i < 3; i = i + 1) begin : ivvali_kabbati_istunna
            full_adder inst (
                .a(a[i]),
                .b(b[i]),
                .cin(cout[i-1]),
                .sum(sum[i]),
                .cout(cout[i])
            );
        end
    endgenerate

endmodule

module full_adder (
    input a, b,
    input cin,
    output sum, cout);

    assign {cout, sum} = a + b + cin;
    
endmodule
