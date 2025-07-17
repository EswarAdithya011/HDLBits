## lemmings1 → `2-State Moore FSM: Lemming Direction Controller`

Design a **Moore FSM** to model a Lemming’s movement with:
- Two states: `WALK_LEFT`, `WALK_RIGHT`
- Two inputs: `bump_left`, `bump_right`
- Two outputs: `walk_left`, `walk_right`
- **Asynchronous reset** forces Lemming to walk left at start.

---

### 🧠 Concept Insight

- **Moore FSM**: Output depends only on **current state**.
- **Lemming behavior**:
  - Bump on left → walk right
  - Bump on right → walk left
  - Bump on both → switch direction
- FSM must flip direction when any bump occurs.
- Output is **mutually exclusive**: only one of `walk_left` or `walk_right` is `1`.

---

### 🧾 FSM Description

| Current State | bump_left | bump_right | Next State | walk_left | walk_right |
|---------------|-----------|-------------|-------------|------------|-------------|
| WALK_LEFT     | 0         | 0           | WALK_LEFT   | 1          | 0           |
| WALK_LEFT     | X         | 1           | WALK_RIGHT  | 1          | 0           |
| WALK_RIGHT    | 1         | X           | WALK_LEFT   | 0          | 1           |
| WALK_RIGHT    | 0         | 0           | WALK_RIGHT  | 0          | 1           |

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock
  - `areset`: Asynchronous reset (resets to WALK_LEFT)
  - `bump_left`: High when obstacle on left
  - `bump_right`: High when obstacle on right
- **Outputs**:
  - `walk_left`: High when walking left
  - `walk_right`: High when walking right

<img width="500" height="256" alt="image" src="https://github.com/user-attachments/assets/9fb284e9-7938-4df8-8d8c-2f41abe7af83" />

<img width="541" height="197" alt="image" src="https://github.com/user-attachments/assets/f060a923-aeb4-491e-b029-2c714dcacf68" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Lemmings1)

---

### ✅ Solution  
📄 [View Solution Code on GitHub]([https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/7.%20Sequential%20Logic/lemmings1.v](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.10%20Lemmings%201/lemmings1.v))

<img width="500" height="600" alt="image" src="https://github.com/user-attachments/assets/2c05fd3a-a445-45a4-89aa-64e7fb33de38" />

---

### 🛠 Design Note

- Use `parameter` or `enum logic` for two states: `WALK_LEFT` and `WALK_RIGHT`.
- Use an `always_ff @(posedge clk or posedge areset)` block for **state transitions**.
- In reset, set state to `WALK_LEFT`.
- Use `always_comb` for next state logic based on `bump_left | bump_right`.
- Outputs (`walk_left`, `walk_right`) depend solely on **present state**, per Moore FSM principles.
- FSMs like these are ideal for direction control in robotic systems, animations, and simulations like in Lemmings-style games.
