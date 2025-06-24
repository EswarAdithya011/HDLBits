module top_module (
    input a,
    input b,
    input c,
    input d,
    output out
);

    assign out = (~a & ~c & ~d)     // a'c'd'
               | (~b & ~c & ~d)     // b'c'd'
               | (~a & ~b & ~c)     // a'b'c'
               | (a & ~b & d)       // ab'd
               | (b & c & d)        // bcd
               | (~a & c & ~d);     // a'cd'

endmodule
