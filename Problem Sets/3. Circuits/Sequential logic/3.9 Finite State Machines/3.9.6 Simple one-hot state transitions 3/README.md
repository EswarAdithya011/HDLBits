## fsm3onehot → `One-Hot Encoded FSM: State Transition and Output Logic`

Design the **combinational transition and output logic** for a **Moore FSM** using **one-hot encoding**. Only the **next_state logic** and **output** need to be derived.

---

### 🧠 Concept Insight

This FSM has **4 states** (A, B, C, D), encoded in **one-hot form**:
- Only one of the 4 bits in `state[3:0]` is high at any time.
  - A = 4'b0001
  - B = 4'b0010
  - C = 4'b0100
  - D = 4'b1000

---

### 📘 State Transition Table

| Current State | `in=0` → Next State | `in=1` → Next State | Output |
|---------------|---------------------|---------------------|--------|
| A (0001)      | A                   | B                   | 0      |
| B (0010)      | C                   | B                   | 0      |
| C (0100)      | A                   | D                   | 0      |
| D (1000)      | C                   | B                   | 1      |

---

### 📘 Problem Statement

- **Inputs**:
  - `in`: Input signal to the FSM
  - `state[3:0]`: One-hot encoded current state

- **Outputs**:
  - `next_state[3:0]`: One-hot encoded next state
  - `out`: Moore FSM output

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fsm3onehot)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.6%20Simple%20one-hot%20state%20transitions%203/fsm3onehot.v)

---

### 🛠 Design Note

- For each bit of `next_state`, write a Boolean expression based on the current `state` and input `in`.
- Use one-hot state variables directly in logic expressions.
- Output `out` depends only on the current state (since it's a Moore FSM), and is `1` only when in state D.

This encoding allows straightforward logic implementation at the cost of extra flip-flops, but simplifies state decoding in many digital design scenarios.
