## fsm3comb → `Combinational Transition and Output Logic for 4-State Moore FSM`

Design the **combinational logic** for a 4-state **Moore Finite State Machine (FSM)** based on a given transition and output table. Only the **next state and output logic** (no flip-flops or clocking) needs to be implemented.

---

### 🧠 Concept Insight

This FSM has:

- **4 states**: A, B, C, D with binary encoding:
  - A = 2'b00
  - B = 2'b01
  - C = 2'b10
  - D = 2'b11

- **1 input**: `in`
- **1 output**: `out` (Moore output — depends only on state)

---

### 📘 State Transition and Output Table

| Current State | `in=0` → Next State | `in=1` → Next State | Output |
|---------------|---------------------|---------------------|--------|
| A (00)        | A (00)              | B (01)              | 0      |
| B (01)        | C (10)              | B (01)              | 0      |
| C (10)        | A (00)              | D (11)              | 0      |
| D (11)        | C (10)              | B (01)              | 1      |

---

### 📘 Problem Statement

- **Inputs**:
  - `in`: FSM input
  - `[1:0] state`: Current state of the FSM

- **Outputs**:
  - `[1:0] next_state`: Combinational next state
  - `out`: Output based on current state only

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fsm3comb)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/7.%20Sequential%20Logic/fsm3comb.v)

---

### 🛠 Design Note

- Use a combinational `case` block on `state` to define `next_state` and `out`.
- Each `state` case contains:
  - A conditional for `in` to determine `next_state`
  - Assignment to `out` (fixed per state for Moore FSM)

This FSM structure is foundational for implementing control logic in digital systems, where clear encoding and transition conditions are crucial.
