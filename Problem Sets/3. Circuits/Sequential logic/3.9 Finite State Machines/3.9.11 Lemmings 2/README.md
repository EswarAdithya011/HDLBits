## lemmings2 → `FSM with Fall Detection and Direction Control`

Design a **Moore FSM** to model a Lemming’s walking and falling behavior:
- **States**:
  - `WALK_LEFT`
  - `WALK_RIGHT`
  - `FALL_LEFT`
  - `FALL_RIGHT`
- **Inputs**:
  - `bump_left`, `bump_right` — switch direction only when **on ground**
  - `ground` — if `0`, Lemming falls; if `1`, Lemming walks in the same direction

---

### 🧠 Concept Insight

- **Moore FSM**: Output depends **only on current state**
- **Falling overrides bump** logic completely
- While **falling**, `aaah = 1` and both `walk_left` and `walk_right = 0`
- When **ground reappears**, return to the same walking direction prior to fall
- **Asynchronous reset** → state = `WALK_LEFT`

---

### 🧾 FSM States

| State        | Description          | walk_left | walk_right | aaah |
|--------------|----------------------|-----------|-------------|------|
| WALK_LEFT    | Walking left         | 1         | 0           | 0    |
| WALK_RIGHT   | Walking right        | 0         | 1           | 0    |
| FALL_LEFT    | Falling from left    | 0         | 0           | 1    |
| FALL_RIGHT   | Falling from right   | 0         | 0           | 1    |

---

### ⛓️ State Transitions

| Current State | ground | bump_left | bump_right | Next State  |
|----------------|--------|-----------|-------------|--------------|
| WALK_LEFT      | 0      | X         | X           | FALL_LEFT    |
| WALK_LEFT      | 1      | X         | 1           | WALK_RIGHT   |
| WALK_LEFT      | 1      | 0         | 0           | WALK_LEFT    |
| WALK_RIGHT     | 0      | X         | X           | FALL_RIGHT   |
| WALK_RIGHT     | 1      | 1         | X           | WALK_LEFT    |
| WALK_RIGHT     | 1      | 0         | 0           | WALK_RIGHT   |
| FALL_LEFT      | 1      | X         | X           | WALK_LEFT    |
| FALL_LEFT      | 0      | X         | X           | FALL_LEFT    |
| FALL_RIGHT     | 1      | X         | X           | WALK_RIGHT   |
| FALL_RIGHT     | 0      | X         | X           | FALL_RIGHT   |

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock
  - `areset`: Reset (forces WALK_LEFT)
  - `bump_left`, `bump_right`: Trigger state change if not falling
  - `ground`: 0 → fall, 1 → resume walk
- **Outputs**:
  - `walk_left`: High when walking left
  - `walk_right`: High when walking right
  - `aaah`: High when falling

<img width="500" height="334" alt="image" src="https://github.com/user-attachments/assets/b79c0d0f-103b-45ea-bd56-fbf73bf60117" />

<img width="500" height="482" alt="image" src="https://github.com/user-attachments/assets/20f2ae0f-9437-46df-894f-4d690818924c" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Lemmings2)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/7.%20Sequential%20Logic/lemmings2.v)

<img width="500" height="719" alt="image" src="https://github.com/user-attachments/assets/caa76b9e-250a-4641-8d8b-eedac5aef005" />

---

### 🛠 Design Note

- Define four FSM states using `typedef enum` or `parameter`.
- **State transitions** should check `ground` first before bump logic.
- Use `always_ff @(posedge clk or posedge areset)` for state flip-flop.
- Use `always_comb` to drive `next_state` based on current state and inputs.
- **Output logic** block assigns `walk_left`, `walk_right`, and `aaah` based solely on present state.

This FSM models more realistic behavior seen in 2D game logic where entities respond to the environment and continue previous behaviors once normal conditions resume.
