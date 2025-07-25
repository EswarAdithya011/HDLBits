# FSM Next-State Logic (One-Hot Encoding)

## 📌 Problem Title  
**Next-State Logic Using One-Hot State Assignment**

---

## 🧾 Problem Statement  
**HDLBits → Exams/m2014_q6c**

Consider the finite state machine shown in the diagram (not displayed here), which has one input `w` and one output `z`.

For this part, assume that a **one-hot encoding** is used with the following state assignment:

- State A: `y[6:1] = 000001`
- State B: `y[6:1] = 000010`
- State C: `y[6:1] = 000100`
- State D: `y[6:1] = 001000`
- State E: `y[6:1] = 010000`
- State F: `y[6:1] = 100000`

You are required to derive logic expressions for the next-state signals:
- `Y2` (next-state signal for state B)
- `Y4` (next-state signal for state D)

Derive the logic equations **by inspection** assuming a one-hot encoding.  
The testbench will test with non-one-hot inputs to ensure that your design logic doesn’t depend on more than necessary.

---

<img width="500" height="747" alt="image" src="https://github.com/user-attachments/assets/ba1a2c01-00e6-4a0b-bd43-ce7cd9ab911d" />

## 🔗 HDLBits Question Link  
[https://hdlbits.01xz.net/wiki/Exams/m2014_q6c](https://hdlbits.01xz.net/wiki/Exams/m2014_q6c)

---

## ✅ Design Note  
- In **one-hot encoding**, only one bit in the state vector `y[6:1]` is high at any time.
- From the FSM diagram:
  - `Y2` (next-state signal for state B) becomes active when **current state is A (y[1]) and w = 0**.
  - `Y4` (next-state signal for state D) becomes active when **current state is B, C, E, or F and w = 1**.
- So, the logic expressions are:
  - `Y2 = y[1] & ~w`
  - `Y4 = (y[2] | y[3] | y[5] | y[6]) & w`

---

## 💡 Solution Reference  
**GitHub Repository**: [Click to view](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.28%20Q6c%3A%20FSM%20one-hot%20next-state%20logic/m2014_q6c.v)  
