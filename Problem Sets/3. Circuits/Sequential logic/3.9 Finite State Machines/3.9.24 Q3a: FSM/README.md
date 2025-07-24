## 🧠 Problem: 3-bit Window Detector (z=1 if w=1 occurs exactly twice every 3 cycles)
**Problem Statement:**  
Design a finite state machine with two inputs `s` and `w`, and one output `z`. The FSM starts in state A and remains in A as long as `s = 0`. When `s = 1`, it moves to state B. From state B onward, it inspects the value of `w` over the next 3 clock cycles. If `w = 1` occurs **exactly two times** in those 3 cycles, then `z` should be `1` in the **next clock cycle**, else `z = 0`. This 3-cycle grouping continues indefinitely.

**FSM Type:** Moore Machine  
**Reset Type:** Synchronous  
**Minimum State Requirement:** Encode count of `w=1` occurrences and cycle position using as few states as possible.

<img width="500" height="557" alt="image" src="https://github.com/user-attachments/assets/20153c2c-ef5c-4eb1-9f1e-5eb4e113da71" />

**HDLBits Link:**  
[HDLBits – Exams/2014_q3fsm](https://hdlbits.01xz.net/wiki/Exams/2014_q3fsm)

**GitHub Solution Link:**  
[GitHub – FSM: 3-bit Window Detector](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.24%20Q3a%3A%20FSM/2014_q3fsm.v)
