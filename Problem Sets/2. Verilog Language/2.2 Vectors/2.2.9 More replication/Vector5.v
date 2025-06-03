module top_module (
    input a, b, c, d, e,
    output [24:0] out );

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    
    // First vector: repeating each input 5 times
    wire [24:0] vec1 = { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} };
    
    // Second vector: replicate the 5-input pattern 5 times
    wire [24:0] vec2 = { 5{a, b, c, d, e} };
    
    // Compute the XNOR of both vectors
    assign out = ~(vec1 ^ vec2); // Bitwise XNOR
    
    // This could be done on one line:
	// assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ {5{a,b,c,d,e}};

endmodule
