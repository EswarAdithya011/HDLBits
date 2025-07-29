module top_module(
    input        w,
    input  [5:0] y,
    output logic Y1,
    output logic Y3
);

    always_comb begin
        Y1 = y[0] & w;
        Y3 = (y[1] | y[2] | y[4] | y[5]) & ~w;
    end

endmodule
