module top_module (
    input [7:0] in,
    output [31:0] out );//

    // Concatenate two things together:
    // 1: {in[7]} repeated 25 times (25 bits)
    // 2: in[6:0] (7 bits)
    assign out = { {25{in[7]}} , in[6:0] };

endmodule
