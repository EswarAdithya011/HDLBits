## fsm2s → `Synchronous JK-Based Moore FSM (JK Flip-Flop Implementation)`

Design a **2-state Moore FSM** that mimics **JK flip-flop behavior** using:

- **Synchronous reset**
- Two input controls (`j` and `k`)
- One output (`out`) based solely on the current state

---

### 🧠 Concept Insight

This FSM acts like a **JK flip-flop**, where transitions are governed by the following:

| Current State | `j` | `k` | Next State |
|---------------|-----|-----|------------|
| OFF (0)       |  1  |  X  | ON (1)     |
| ON (1)        |  X  |  1  | OFF (0)    |
| Else          |     |     | Remains the same |

- **Output** is a Moore output (depends only on the current state)
- **Reset** is synchronous and always sends FSM to `OFF` on the next clock edge

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock
  - `reset`: Active-high **synchronous** reset to `OFF`
  - `j`: Set signal
  - `k`: Reset signal

- **Output**:
  - `out`: 1 if the FSM is in the `ON` state, 0 otherwise

<img width="400" height="169" alt="image" src="https://github.com/user-attachments/assets/e7d638ec-86eb-4d57-83a1-566f6afa7ab8" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fsm2s)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/7.%20Sequential%20Logic/fsm2s.v)

<img width="500" height="505" alt="image" src="https://github.com/user-attachments/assets/7736f19b-5b3e-4a94-919e-32aea81d095d" />

---

### 🛠 Design Note

- **State Encoding**:
  - `OFF = 1'b0`
  - `ON  = 1'b1`

- **Reset Behavior**:
  - On `reset = 1`, state becomes `OFF` on the next `posedge clk`

- **State Transitions**:
  - From `OFF`: if `j = 1` → go to `ON`, else stay
  - From `ON`: if `k = 1` → go to `OFF`, else stay

- **Output**:
  - `out = 1` only when current state is `ON`
