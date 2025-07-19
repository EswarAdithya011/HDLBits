## 🧠 Problem Title: Lemmings3

### 🔍 Problem Statement:
Extend the FSM from Lemmings1 and Lemmings2 to support an additional `dig` behavior.

A Lemming can be in one of the following **states**:
- `LEFT`: Walking left
- `RIGHT`: Walking right
- `FALL_LEFT`: Falling while originally walking left
- `FALL_RIGHT`: Falling while originally walking right
- `DIG_LEFT`: Digging while originally walking left
- `DIG_RIGHT`: Digging while originally walking right

### ⚙️ Inputs:
- `clk`: Clock signal
- `areset`: Asynchronous reset (resets to walking left)
- `bump_left`: High if bumped on left
- `bump_right`: High if bumped on right
- `ground`: High if on ground
- `dig`: High to command dig

### 🧾 Outputs:
- `walk_left`: High when walking left
- `walk_right`: High when walking right
- `aaah`: High when falling

### 📚 Concept Insight:
This is a **Moore FSM** with 6 states. The **transition priority** is:
1. Fall if not on ground
2. Dig if commanded and on ground
3. Change direction if bumped
4. Keep walking

Moore FSM means outputs are based only on the current state.

---

## 🔗 HDLBits Problem Link:

<img width="500" height="443" alt="image" src="https://github.com/user-attachments/assets/30c48e72-8389-4d8d-b48a-7d21e895ba3a" />

[Lemmings3 – HDLBits](https://hdlbits.01xz.net/wiki/Lemmings3)

## 💡 GitHub Solution Link:
[Click here to view on GitHub](https://github.com/EswarAdithya011/HDLBits-Verilog-Solutions/blob/main/FSM/Lemmings3.sv)

<img width="500" height="866" alt="image" src="https://github.com/user-attachments/assets/a13a6ffe-75ee-4924-a4a5-9c568b02e970" />
