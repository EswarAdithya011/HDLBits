module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] carry; // Internal carries between each BCD digit adder

    genvar i;
    generate 
        for(i = 0; i < 100; i = i + 1)	begin: urike_ala
            if(i == 0)	begin
            bcd_fadd bcd_add_first (.a(a[i*4 + 3 : i*4]), 
                                    .b(b[i*4 + 3 : i*4]), 
                                    .cin(cin),
                                    .sum(sum[i*4 + 3 : i*4]),
                                    .cout(carry[i])
                                   );
            end
            
            else	begin
            bcd_fadd bcd_add_remaining (.a(a[i*4 + 3 : i*4]), 
                                        .b(b[i*4 + 3 : i*4]), 
                                        .cin(carry[i-1]),
                                        .sum(sum[i*4 + 3 : i*4]),
                                        .cout(carry[i])
                                       );
            end
        end
    endgenerate
    
    assign cout = carry[99]; // Final carry out from the last BCD adder

    
endmodule
