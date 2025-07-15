## fsm2 → `Asynchronous JK-Based Moore FSM (JK Flip-Flop Implementation)`

Design a **2-state Moore FSM** using **JK Flip-Flop logic** with the following features:

- **Asynchronous reset**
- **States**: `OFF` (0) and `ON` (1)
- **Inputs**: `j` and `k`
- **Output** is high (`1`) only in the `ON` state

---

### 🧠 Concept Insight

This FSM behaves like a **JK flip-flop**, where:

- In state `OFF`:
  - If `j = 1` → transition to `ON`
  - Else → remain in `OFF`
- In state `ON`:
  - If `k = 1` → transition to `OFF`
  - Else → remain in `ON`

The FSM is **Moore type**, so the output depends only on the current state, not on the inputs.

The **asynchronous reset** resets the state to `OFF` (0) immediately on `areset = 1`.

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock input
  - `areset`: Active-high asynchronous reset to `OFF`
  - `j`, `k`: FSM control inputs

- **Output**:
  - `out`: 1 only in the `ON` state

<img width="400" height="177" alt="image" src="https://github.com/user-attachments/assets/875bc401-84a1-4c8f-8acb-c784fc001aa9" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fsm2)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.3%20Simple%20FSM%202(asynchronous%20reset)/fsm2.v)

<img width="500" height="504" alt="image" src="https://github.com/user-attachments/assets/46ba28a7-6900-4c87-af0d-ebf413a88020" />

---

### 🛠 Design Note

- **States**:
  - `OFF = 1'b0`
  - `ON = 1'b1`
- **Transition logic**:
  - From `OFF`: if `j = 1` → go to `ON`, else stay in `OFF`
  - From `ON`: if `k = 1` → go to `OFF`, else stay in `ON`
- **Output logic**:
  - `out = 1` only when in `ON` state
- **Reset logic**:
  - On `areset = 1`, force state to `OFF` immediately (outside clock edge)
