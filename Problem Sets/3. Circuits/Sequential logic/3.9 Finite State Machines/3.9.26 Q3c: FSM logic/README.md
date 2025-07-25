## Problem Title: Logic Function Implementation from FSM Table (Y0 and z)  
### Problem Statement:  
Given the state-assigned FSM table, implement the logic functions for `Y[0]` and output `z`. You are not implementing the full FSM here — only the combinational logic for the next state's LSB bit (`Y0`) and the output `z`.

| Present State (y[2:0]) | Next State Y[2:0] (x=0) | Next State Y[2:0] (x=1) | Output z |
|------------------------|--------------------------|--------------------------|----------|
| 000                    | 000                      | 001                      | 0        |
| 001                    | 001                      | 100                      | 0        |
| 010                    | 010                      | 001                      | 0        |
| 011                    | 001                      | 010                      | 1        |
| 100                    | 011                      | 100                      | 1        |

Only logic expressions for `Y[0]` and `z` are required.

### Concept Insight:
- This is a combinational logic derivation problem based on state transitions.
- `Y0` is the least significant bit of the next state `Y`, derived using current state `y[2:0]` and input `x`.
- `z` is the output associated with current state `y[2:0]` and input `x`.

### HDLBits Link:  
[HDLBits - exams/2014_q3c](https://hdlbits.01xz.net/wiki/Exams/2014_q3c)

### GitHub Solution Link:  
[GitHub - HDLBits Solutions Repository](https://github.com/eswardi/HDLBits_Solutions/blob/main/FSM/exams_2014_q3c.v)

### Design Note:
- You should derive `Y0` by analyzing how `y` and `x` influence the LSB of the next state.
- The output `z` is `1` only for specific state-input combinations. Use truth table reduction (K-map or Boolean algebra) to find the simplest logic.
- This is a common type of exam question that tests combinational logic skills based on FSM behavior.
