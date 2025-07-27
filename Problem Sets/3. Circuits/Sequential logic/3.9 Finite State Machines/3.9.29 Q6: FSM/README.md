# FSM Design: Exams/m2014_q6

## 🧠 Problem Statement

Design a finite state machine based on the state diagram provided. The FSM has a single input `w` and a single output `z`. Implement this FSM using synchronous reset logic. This problem reinforces FSM design by modeling its states, transitions, and output behavior in Verilog.

## 🔗 HDLBits Link

[HDLBits: Exams/m2014_q6](https://hdlbits.01xz.net/wiki/Exams/m2014_q6)

## ✅ GitHub Solution Link

[GitHub: Exams/m2014_q6 - FSM Implementation](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.29%20Q6%3A%20FSM/m2014_q6.v)

## 🧩 Design Diagram

State transition diagram:

    +---+      w=1     +---+
    | A | -------------| A |
    +---+              +---+
     |                   ^
 w=0 |                   |
     v                   | w=1
    +---+     w=1      +---+
    | B |------------->| D |
    +---+              +---+
     |                   ^
 w=0 |                   | w=1
     v                   |
    +---+     w=1      +---+
    | C |------------->| D |
    +---+              +---+
     |                   ^
 w=0 |                   | w=1
     v                   |
    +---+     w=1      +---+
    | E |------------->| D |
    +---+              +---+
     ^                   |
 w=0 |                   | w=0
     +-------------------+
                         |
                        \|/
                        +---+
                        | F |
                        +---+
                         |
                      w=1|
                         v
                        +---+
                        | D |
                        +---+


Output `z = 1` when in states `E` or `F`, otherwise `z = 0`.

## 🧾 Design Note

This FSM uses six named states encoded as 3-bit binary values. The design consists of three main components:

- **State Encoding:** Six unique binary codes for each state.
- **Next-State Logic:** A combinational logic block that determines the next state based on the current state and input `w`.
- **State Register:** A clocked sequential block that updates the state on the rising edge of the clock, with synchronous reset.
- **Output Logic:** Combinational logic that sets `z = 1` for terminal states `E` and `F`.
