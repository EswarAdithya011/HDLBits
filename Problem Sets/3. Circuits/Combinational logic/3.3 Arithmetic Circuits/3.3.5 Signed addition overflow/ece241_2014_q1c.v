module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    assign s        = a + b;     
    // Overflow occurs when the sign bits of a and b are the same,
    // but the sign bit of the result is different.
    assign overflow = (~a[7] & ~b[7] & s[7]) | (a[7] & b[7] & ~s[7]);

endmodule
