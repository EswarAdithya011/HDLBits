## Problem Title: FSM Implementation – Motor Control FSM with Sequence Detection

### Problem Statement:
Consider a finite state machine used to control a motor. The FSM has inputs `x` and `y` from the motor, and produces outputs `f` and `g` to control the motor. It also has a clock input `clk` and an active-low synchronous reset input `resetn`.

**FSM Behavior:**
- While `resetn` is asserted (0), the FSM stays in the initial state A.
- When `resetn` is deasserted (1), on the *next* clock edge:
  - The FSM sets `f = 1` for **one clock cycle**.
  - Then it starts monitoring `x` to detect the sequence **1 → 0 → 1** in three successive clock cycles.
  - If that sequence is found, `g = 1` in the **next** clock cycle.
  - After `g` is set to 1, monitor input `y`:
    - If `y == 1` in the **next two clock cycles**, then `g` remains 1 *permanently* (until reset).
    - Otherwise, `g` is reset to 0 permanently (until reset).

### Concept Insight:
- Use a finite state machine with enough states to track:
  - The initial phase with output `f`
  - The three-step pattern detection of `x = 1 → 0 → 1`
  - The conditional output of `g` based on values of `y` in two cycles

- Use a state register and synchronous logic to control transitions and output assignments.
- Each behavior (e.g., `f=1`, detecting `101`, timing two cycles for `y`) requires careful state tracking.

### HDLBits Link:  
[HDLBits - Exams/2013_q2bfsm](https://hdlbits.01xz.net/wiki/Exams/2013_q2bfsm)

### GitHub Solution Link:  
[GitHub - HDLBits Solutions Repository](https://github.com/eswardi/HDLBits_Solutions/blob/main/FSM/exams_2013_q2bfsm.v)
