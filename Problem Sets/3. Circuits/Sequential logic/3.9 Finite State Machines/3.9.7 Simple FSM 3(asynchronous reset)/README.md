## fsm3 → `4-State Moore FSM with Asynchronous Reset`

Design a **Moore finite state machine** with:
- 4 states: A, B, C, D
- One input: `in`
- One output: `out`
- **Asynchronous reset** to state A

---

### 🧠 Concept Insight

- A **Moore FSM** computes its output based solely on the **current state**, not the input.
- **State transitions** depend on the current state and input value.
- **Asynchronous reset** sets the FSM to a predefined initial state (`A`) independent of the clock.

---

### 📘 State Transition Table

| Current State | `in = 0` → Next | `in = 1` → Next | `out` |
|---------------|-----------------|-----------------|--------|
| A             | A               | B               | 0      |
| B             | C               | B               | 0      |
| C             | A               | D               | 0      |
| D             | C               | B               | 1      |

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock signal
  - `in`: Input signal
  - `areset`: Asynchronous active-high reset

- **Output**:
  - `out`: Output defined by current FSM state

<img width="400" height="256" alt="image" src="https://github.com/user-attachments/assets/9b6e9848-871b-4180-b57a-c0598e97c505" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fsm3)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/7.%20Sequential%20Logic/fsm3.v)

<img width="415" height="459" alt="image" src="https://github.com/user-attachments/assets/8a88bc19-f3a2-44be-854b-3f30f9c906cb" />

---

### 🛠 Design Note

- Use an enumerated type or parameters to represent states A, B, C, D.
- Use an `always @(*)` block for combinational **state transition logic**.
- Use an `always @(posedge clk or posedge areset)` block for **state register**.
- Assign `out` based on the FSM state using a combinational block.

This type of FSM is widely used in digital controllers and protocol engines.
