module top_module (
    input clk,
    input [7:0] in,
    input reset,             // Synchronous reset
    output logic [23:0] out_bytes,
    output logic done
);

    // State encoding
    typedef enum logic [1:0] {
        BYTE1 = 2'b00,  // Waiting for the first byte with in[3] = 1
        BYTE2 = 2'b01,  // Receiving second byte
        BYTE3 = 2'b10,  // Receiving third byte
        DONE  = 2'b11   // All three bytes received, assert done
    } state_t;

    state_t state, next_state;

    // Byte storage
    logic [7:0] byte1, byte2, byte3;

    // State transition logic
    always_comb begin
        case (state)
            BYTE1: next_state = (in[3]) ? BYTE2 : BYTE1;
            BYTE2: next_state = BYTE3;
            BYTE3: next_state = DONE;
            DONE : next_state = (in[3]) ? BYTE2 : BYTE1;
            default: next_state = BYTE1;
        endcase
    end

    // Sequential state register
    always_ff @(posedge clk) begin
        if (reset)
            state <= BYTE1;
        else
            state <= next_state;
    end

    // Byte capturing logic
    always_ff @(posedge clk) begin
        case (next_state)
            BYTE2: byte1 <= in;
            BYTE3: byte2 <= in;
            DONE : byte3 <= in;
            default: ; // No update in BYTE1
        endcase
    end

    // Output logic
    always_comb begin
        done = (state == DONE);
        out_bytes = (state == DONE) ? {byte1, byte2, byte3} : 24'd0;
    end

endmodule
