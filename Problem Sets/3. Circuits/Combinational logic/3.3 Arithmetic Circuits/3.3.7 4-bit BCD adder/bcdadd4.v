module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

    wire [4:0] carry_int;

    assign carry_int[0] = cin;

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : bcd_loop
            bcd_fadd bcd_instance (
                .a   (a[i*4 +: 4]),
                .b   (b[i*4 +: 4]),
                .cin (carry_int[i]),
                .sum (sum[i*4 +: 4]),
                .cout(carry_int[i+1])
            );
        end
    endgenerate

    assign cout = carry_int[4];

endmodule
