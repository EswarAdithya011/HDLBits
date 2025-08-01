## 🧠 Problem: FSM One-Hot Logic Derivation by Inspection

**Problem Statement:**  
Given a finite state machine with 10 states encoded using **one-hot encoding** as follows:  
(S, S1, S11, S110, B0, B1, B2, B3, Count, Wait) = (10'b0000000001, 10'b0000000010, 10'b0000000100, ..., 10'b1000000000)

You are required to derive **next-state and output logic equations** **by inspection** — meaning by analyzing the state transition diagram and mapping conditions for transitions.

**Inputs:**  
- `d`: serial input  
- `done_counting`: signal indicating the counting is complete  
- `ack`: acknowledgment signal to restart process  
- `state[9:0]`: current one-hot encoded state

**Outputs (to be generated):**  
- `B3_next`: next-state logic for state B3  
- `S_next`: next-state logic for state S  
- `S1_next`: next-state logic for state S1  
- `Count_next`: next-state logic for state Count  
- `Wait_next`: next-state logic for state Wait  
- `done`: asserted when in Wait state and `ack == 0`  
- `counting`: asserted when in Count state  
- `shift_ena`: asserted during S, S1, S11, S110 states (shift enable)

**FSM Type:** Combinational Next-State and Output Logic only  
**Encoding:** One-hot  
**Synchronous FSM (assumed)**

<img width="500" height="250" alt="image" src="https://github.com/user-attachments/assets/52b948c1-fc19-47c3-b704-06e9f53b43d0" />

**HDLBits Link:**  
[HDLBits – Exams/review2015_fsmonehot](https://hdlbits.01xz.net/wiki/Exams/review2015_fsmonehot)

**GitHub Solution Link:**  
[GitHub – FSM One-Hot by Inspection](https://github.com/KorrapoluEswarAdithya/SystemVerilog-FSM-Designs/blob/main/exams/review2015_fsmonehot.sv)
