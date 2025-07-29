### ✅ Problem Title  
**Finite State Machine Design (Synchronous FSM with 6 States)**

---

### 📄 Problem Statement  
Given a 6-state FSM diagram, write a complete Verilog code that models the finite state machine. The FSM should be implemented using:
- Separate always blocks for **state transition logic** and **state register**.
- The output `z` can be implemented using either a continuous assignment or an always block.
- You may choose any binary encoding for the states.
- The reset signal is **synchronous and active-high**.

---

### 💡 Concept Insight  
This is a **Mealy/Moore FSM** synthesis question from exam practice, focusing on:
- Correct usage of state registers and next-state logic.
- Designing FSMs using separate combinational and sequential logic blocks.
- Practicing FSM output generation based on specific states.

<img width="500" height="535" alt="image" src="https://github.com/user-attachments/assets/3d1d4afa-6213-4e7f-add4-8a10e7a53f14" />

---

### 🔗 HDLBits Question Link  
[https://hdlbits.01xz.net/wiki/Exams/2012_q2fsm](https://hdlbits.01xz.net/wiki/Exams/2012_q2fsm)

---

### 📂 GitHub Solution Link  
[https://github.com/KorrapoluEswarAdithya/HDLBits-Verilog-Solutions/blob/main/Exams/2012_q2fsm.sv](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.30%20Q2a%3A%20FSM/2012_q2fsm.v)

---

### 🧠 Design Note  
- Six states were named A–F and encoded as 3-bit binary values.
- The **next state logic** was implemented using a combinational `always @(*)` block.
- The **state register update** uses a synchronous process triggered on `posedge clk`.
- The output `z` is set high when the FSM is in state E or F.
- This FSM tests both transitions and output conditions across multiple paths, reinforcing strong FSM design fundamentals.
