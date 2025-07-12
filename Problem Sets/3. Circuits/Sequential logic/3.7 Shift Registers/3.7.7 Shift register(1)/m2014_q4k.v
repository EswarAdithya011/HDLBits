module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);

    reg[3:0]shift_reg;
    
    always @(posedge clk)	begin
        if(!resetn)
            shift_reg <= 4'd0;
        else 
            shift_reg <= {in, shift_reg[3:1]};
    end
    
    assign out = shift_reg;

endmodule
