## Problem Title: 3-bit Encoded FSM Implementation  
### Problem Statement:  
Given the state-assigned table shown below, implement the finite-state machine. Reset should reset the FSM to state 000.

| Present State (y[2:0]) | Next State Y[2:0] (x=0) | Next State Y[2:0] (x=1) | Output z |
|------------------------|--------------------------|--------------------------|----------|
| 000                    | 000                      | 001                      | 0        |
| 001                    | 001                      | 100                      | 0        |
| 010                    | 010                      | 001                      | 0        |
| 011                    | 001                      | 010                      | 1        |
| 100                    | 011                      | 100                      | 1        |

Reset is synchronous.  
You are to implement this FSM in SystemVerilog or Verilog.

### Concept Insight:
This is a Mealy FSM using binary-encoded states. The transitions depend on both current state and input `x`. `z` is output based on both current state and input. The challenge is to correctly map the next state and output logic from the truth table using if-else or case logic.

### HDLBits Link:  
[HDLBits - exams/2014_q3bfsm](https://hdlbits.01xz.net/wiki/Exams/2014_q3bfsm)

### GitHub Solution Link:  
[GitHub - HDLBits Solutions Repository](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.25%20Q3b%3A%20FSM/2014_q3bfsm.v)

### Design Note:
- Use `reg [2:0] state, next_state` to represent the encoded FSM states.
- Use synchronous reset to return to state `000`.
- Derive `next_state` from `state` and `x` using combinational logic.
- Set `z` based on the present state directly (Moore) or in next-state logic (Mealy), as appropriate.
