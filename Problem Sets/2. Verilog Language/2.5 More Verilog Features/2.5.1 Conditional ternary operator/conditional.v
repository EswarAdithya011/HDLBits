module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] result_1;
    wire [7:0] result_2;
    
    // assign intermediate_result1 = compare? true: false;
    assign result_1 = (a < b) ? a : b;
    assign result_2 = (c < d) ? c : d;
    assign min = (result_1 < result_2) ? result_1 : result_2;

endmodule
