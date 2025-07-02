module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);

       
    reg wire_temp;
    
    always @ (*)
            wire_temp = L ? r_in : q_in;
    
    always @ (posedge clk)
        begin
            Q <= wire_temp;
        end
    
endmodule
