## rule110 → `1D Cellular Automaton – Rule 110 Implementation`

Design a **512-bit cellular automaton** that evolves according to **Rule 110**.

---

### 🧠 Concept Insight

- **Rule 110** is a **Turing-complete** cellular automaton.
- It exhibits complex, self-replicating patterns from simple rules.
- Each cell's **next state** is computed from its **left**, **center**, and **right** neighbors.

Rule 110 transition table:

| Left | Center | Right | Next |
|------|--------|--------|------|
| 1    | 1      | 1      | 0    |
| 1    | 1      | 0      | 1    |
| 1    | 0      | 1      | 1    |
| 1    | 0      | 0      | 0    |
| 0    | 1      | 1      | 1    |
| 0    | 1      | 0      | 1    |
| 0    | 0      | 1      | 1    |
| 0    | 0      | 0      | 0    |

This binary truth table represents the value `8'b01101110`, which is `8'h6E` = `110` in decimal, hence **Rule 110**.

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock input to update the system at each cycle
  - `load`: Load the initial state when high
  - `data[511:0]`: Initial cell configuration

- **Output**:
  - `q[511:0]`: Current cell configuration of the 512-bit system

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Rule110)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.8%20More%20Circuits/Rule%20110/rule110.v)

<img width="503" height="472" alt="image" src="https://github.com/user-attachments/assets/0e071c9f-bd65-4a18-8b9f-6dd1202d39e3" />

---
