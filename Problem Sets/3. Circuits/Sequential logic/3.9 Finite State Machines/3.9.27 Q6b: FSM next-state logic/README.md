### 🔹 Problem Title: Next-State Logic for y[2]  
---

### 🧾 Problem Statement:  
**HDLBits Link:** [exams/m2014_q6b](https://hdlbits.01xz.net/wiki/Exams/m2014_q6b)  
This problem requires you to derive and implement the next-state logic for bit `y[2]` of a finite state machine. The FSM has one input `w` and one output `z`, and uses three flip-flops with state encodings y[3:1] = 000 (A), 001 (B), 010 (C), 011 (D), 100 (E), and 101 (F). The task is to analyze the FSM behavior and derive a Boolean expression for the next value of y[2] based on the current state and input `w`. This is focused on combinational logic design and not the complete FSM implementation.

---

### 📘 Concept Insight:  
This problem falls under **FSM Design and Next-State Logic Derivation**. We're not required to implement the FSM but only focus on the logic expression of a specific flip-flop's input, particularly `y[2]`.  
Given the state transitions and state encoding, derive the logic equation for `Y2 = next_state[1]` using truth table and Karnaugh map if necessary.

<img width="500" height="744" alt="image" src="https://github.com/user-attachments/assets/bb369069-7f00-4fa4-9dda-8e4528fedeb7" />

---

### ✅ Solution Available at:  
**GitHub:** [Next-State Logic for y[2] Solution](https://github.com/korrapolueswaradithya/HDLBits_Solutions/blob/main/Exams/m2014_q6b.sv)

---

### 🧠 Design Note:  
To derive `Y2`, analyze how the bit position [1] of the next state changes with respect to `w` and current state `y[3:1]`. Consider all transitions from the state diagram and construct a next-state truth table. From this, derive a minimized Boolean expression and use it to assign the value to `Y2`. This problem is more about Boolean reduction than Verilog coding.
