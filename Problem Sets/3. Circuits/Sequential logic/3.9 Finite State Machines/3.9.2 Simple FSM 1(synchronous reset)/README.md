## fsm1s → `Moore FSM with Synchronous Reset – 2-State Toggle FSM`

Design a **Moore finite state machine (FSM)** with the following specifications:
- **Two states**: A and B
- **One input**: `in`
- **One output**: `out`
- **Synchronous reset** to state **B**
- Output depends only on the current state (Moore machine)

---

### 🧠 Concept Insight

- This FSM models a **T-type flip-flop with inverted T input**.
- **State A**: `out = 1`
- **State B**: `out = 0`
- On each clock cycle:
  - If `in = 1`, the FSM toggles its state.
  - If `in = 0`, the FSM remains in its current state.
- The **reset is synchronous**, so reset to **state B** occurs **only on the rising edge** of the clock when `reset = 1`.

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock input
  - `reset`: Synchronous active-high reset
  - `in`: Control signal to determine state transitions

- **Output**:
  - `out`: 1-bit output determined by the current state

<img width="350" height="172" alt="image" src="https://github.com/user-attachments/assets/7afa0c3d-a3b5-48fc-b64a-7ab4b796b9be" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fsm1s)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.2%20Simple%20FSM%201(synchronous%20reset)/fsm1s.v)

<img width="500" height="473" alt="image" src="https://github.com/user-attachments/assets/1ac0e52a-d448-41a7-9022-410e48e54e4c" />

---

### 🛠 Design Note

- Define two states (`A = 1'b1`, `B = 1'b0`).
- Use a state register updated at every positive clock edge.
- When `reset = 1`, transition to state **B**.
- Otherwise:
  - If `in = 1`, toggle the state
  - If `in = 0`, hold the state
- Output logic:
  - `out = 1` if in state **A**
  - `out = 0` if in state **B**
