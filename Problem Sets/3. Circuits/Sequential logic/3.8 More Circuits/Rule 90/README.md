## rule90 → `1D Cellular Automaton – Rule 90 Implementation`

Design a **1-dimensional 512-bit cellular automaton** that evolves according to **Rule 90**.

---

### 🧠 Concept Insight

- **Rule 90** is a simple yet mathematically fascinating cellular automaton.
- Each cell's **next state** is computed as the XOR of its **immediate left and right neighbors**.
- The boundary cells are assumed to be `0`.

Rule 90 transition table:

| Left | Center | Right | Next |
|------|--------|--------|------|
| 1    | 1      | 1      | 0    |
| 1    | 1      | 0      | 1    |
| 1    | 0      | 1      | 0    |
| 1    | 0      | 0      | 1    |
| 0    | 1      | 1      | 1    |
| 0    | 1      | 0      | 0    |
| 0    | 0      | 1      | 1    |
| 0    | 0      | 0      | 0    |

This rule generates **Sierpiński triangle patterns** when started with a single `1` in the center.

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock input to update the state every cycle
  - `load`: When high, loads initial state from `data`
  - `data[511:0]`: Initial state input vector

- **Output**:
  - `q[511:0]`: State of the 512-cell automaton

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Rule90)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/7.%20Sequential%20Logic/rule90.v)

<img width="502" height="472" alt="image" src="https://github.com/user-attachments/assets/bc5b0747-a57a-4687-83f8-b216d6b6ade3" />

---

### 🛠 Design Note

- When `load` is asserted, `q` takes the value of `data`.
- Otherwise, for every index `i` (0 ≤ i < 512), `q[i]` gets updated to `q[i-1] ^ q[i+1]`, treating out-of-bound neighbors (`q[-1]`, `q[512]`) as zero.
- Internally, this is often implemented using a **combinational next state** vector with **shifted XORs**, and stored in a register bank for synchronous update.
- This design is **data-parallel** and well-suited for **bit-level simulations** and **pattern generation** in cellular automata research.
