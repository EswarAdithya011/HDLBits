module top_module( 
    input a, 
    input b, 
    output out );
    
    xnor G1(out,a,b);
    
endmodule
