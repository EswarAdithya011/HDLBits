module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z ); 

    reg [7:0]RAM_int;
    
    always @(posedge clk)	begin
        if(enable)	begin
        	RAM_int    <= RAM_int << 1;
            RAM_int[0] <= S; 
        end
        else	
            RAM_int <= RAM_int;
    end
    
    always @(A or B or C)	begin
            case({A, B, C})	
                3'b000: Z <= RAM_int[0];
                3'b001: Z <= RAM_int[1];
                3'b010: Z <= RAM_int[2];
                3'b011: Z <= RAM_int[3];
                3'b100: Z <= RAM_int[4];
                3'b101: Z <= RAM_int[5];
                3'b110: Z <= RAM_int[6];
                3'b111: Z <= RAM_int[7];
               default: Z <= RAM_int[0];
            endcase
    end
    
endmodule
