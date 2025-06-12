module top_module (
    input in,
    output out);

    function automatic logic pass_in_to_out(input logic x);
        return(x);
    endfunction
    
    assign out = pass_in_to_out(in);
    
endmodule
