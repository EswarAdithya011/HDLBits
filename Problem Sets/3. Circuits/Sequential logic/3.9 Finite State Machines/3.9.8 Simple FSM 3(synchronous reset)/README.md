## fsm3s → `4-State Moore FSM with Synchronous Reset`

Design a **Moore finite state machine** with:
- 4 states: A, B, C, D
- One input: `in`
- One output: `out`
- **Synchronous reset** to state A

---

### 🧠 Concept Insight

- A **Moore FSM** produces output based solely on the **present state**.
- **State transitions** depend on the input and the current state.
- **Synchronous reset** activates on the **clock edge**, unlike asynchronous reset.

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
  - `reset`: Synchronous active-high reset

- **Output**:
  - `out`: Output defined by the current FSM state

<img width="531" height="244" alt="image" src="https://github.com/user-attachments/assets/f1d5a60d-93e6-449a-9364-d3717738c82a" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fsm3s)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.8%20Simple%20FSM%203(synchronous%20reset)/fsm3s.v)

<img width="513" height="450" alt="image" src="https://github.com/user-attachments/assets/5e9513f9-c81a-4645-b007-32eb1c0d84fa" />

---

### 🛠 Design Note

- Use `parameter` or `typedef enum logic` to define states.
- Use a synchronous reset inside the sequential `always @(posedge clk)` block to initialize to state A.
- Use a combinational `always @(*)` block for **next state logic**.
- Output (`out`) is based on **present state only** (Moore model).
- This model is preferred in RTL design for clock-synchronized systems like protocol decoders and control logic.
