# 🧠 Lemmings4 – Finite State Machine with Fall Timer and Splatter State

Extend your FSM from previous Lemmings problems to model **splatter behavior**: if a Lemming **falls for more than 20 clock cycles** before hitting the ground, it splatters (dies). Upon splattering, **all outputs must stay at 0** forever until a reset occurs.

---

### 📘 Problem Statement

A Lemming can **walk**, **fall**, or **dig**. But if it **falls for more than 20 cycles** and then hits the ground, it **splats** and all outputs remain 0 thereafter.

#### FSM Conditions:

- Inputs:
  - `clk`: Clock
  - `a`: At the edge
  - `b`: Ground present
  - `dig`: Dig command
- Outputs:
  - `walk_left`
  - `walk_right`
  - `aaah`
  - `digging`
- States:
  - Walking
  - Falling (`aaah`)
  - Digging
  - **Splattered**

🟥 You must:
- Count how long the Lemming is falling.
- If it falls more than 20 cycles, then hits the ground: transition to a permanent **splattered** state.
- In splattered state, all outputs = 0 until reset.

<img width="500" height="488" alt="image" src="https://github.com/user-attachments/assets/3739c090-7b6a-4c7a-9e7e-836238635ac3" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Lemmings4)

---

### 🧩 Concept Insight

- Use a **counter** to track how many cycles the FSM stays in the falling state.
- Trigger the **splatter transition** only when the Lemming is falling **and** hits the ground after >20 cycles.
- After splatter, use a **"trap" state** (e.g., `SPLAT`) to ensure FSM outputs stay at 0.
- Reset condition should return FSM back to normal starting state.

---

### ✅ Solution

📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Finite%20State%20Machines/3.1%20FSM/3.1.10%20Lemmings4/Lemmings4.v)

<img width="500" height="681" alt="image" src="https://github.com/user-attachments/assets/5d1ac45d-6515-46fb-87db-75e4f9d174d5" />

---

### 🛠 Design Note

This problem introduces **timed transitions** in FSMs—a fundamental technique when modeling time-based events (e.g., timeouts, fall duration). It also demonstrates **state permanence** by trapping in a dead state (splattered) using conditional logic and counters. Managing this cleanly without unintended behavior requires careful reset and counter design.
