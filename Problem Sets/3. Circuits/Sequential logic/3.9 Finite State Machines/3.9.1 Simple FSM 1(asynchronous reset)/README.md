## fsm1 → `Moore FSM with Asynchronous Reset – 2-State Toggle FSM`

Design a **Moore finite state machine** with the following features:
- **Two states**: A and B
- **One input**: `in`
- **One output**: `out`
- **Asynchronous reset** to state **B**
- **Behavior**: The state toggles based on input, and output depends only on the current state

---

### 🧠 Concept Insight

- This FSM behaves like a **T-type flip-flop with inverted T input**.
- **State A**: `out = 1`
- **State B**: `out = 0`
- On each clock cycle:
  - If `in = 1`, the FSM toggles its state
  - If `in = 0`, the FSM holds its state
- The reset is **asynchronous**, meaning the FSM jumps to **state B** immediately when `areset = 1`, regardless of clock

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock signal
  - `areset`: Asynchronous active-high reset to **state B**
  - `in`: Control signal that decides whether to toggle state

- **Output**:
  - `out`: Output depends only on the current state (Moore machine)

<img width="350" height="161" alt="image" src="https://github.com/user-attachments/assets/182efaec-b78f-4aaa-b980-63d2fc19c0c6" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fsm1)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.1%20Simple%20FSM%201(asynchronous%20reset)/fsm1.v)

<img width="520" height="463" alt="image" src="https://github.com/user-attachments/assets/903c081f-1e98-4e31-8ba2-a68e8e55510b" />
