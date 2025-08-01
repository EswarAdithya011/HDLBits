## Problem Title: FSM to Enable Shift Register for 4 Cycles After Reset  
### Problem Statement:  
Design a finite state machine (FSM) that asserts an output signal `shift_ena` for exactly **4 consecutive clock cycles** after a **synchronous reset** is applied. After these 4 cycles, `shift_ena` should remain **low (0)** until the next reset occurs.

**Behavior Overview:**
- `reset` is synchronous and initializes the FSM.
- Upon reset, `shift_ena` becomes 1 for four cycles.
- After four cycles, `shift_ena` goes low and stays low indefinitely.
- The FSM does not restart counting unless another reset is applied.

### Concept Insight:
- Use a 3-bit counter-based FSM to track the number of cycles after reset.
- Transition through 5 states: INIT, C1, C2, C3, C4 → DONE.
- In states C1 through C4, output `shift_ena = 1`.
- In state DONE, output `shift_ena = 0`.

<img width="500" height="158" alt="image" src="https://github.com/user-attachments/assets/442606df-d9f5-48d1-baf9-fe507d232055" />

### HDLBits Link:  
[HDLBits - exams/review2015_fsmshift](https://hdlbits.01xz.net/wiki/Exams/review2015_fsmshift)

### GitHub Solution Link:  
[GitHub - HDLBits Solutions Repository](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Building%20Larger%20circuits/3.10.4%20FSM%3A%20Enable%20shift%20register/review2015_fsmshift.v)

### Design Note:
- This FSM works as a **post-reset trigger** to enable operations in a shift register for a limited time.
- It is meant to be chained with the FSM from `fsmseq`, ensuring correct temporal control in a multi-stage datapath.
- This technique is useful in scenarios where a fixed number of cycles are required to load or initialize data post-activation.
