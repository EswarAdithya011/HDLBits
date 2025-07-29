### Problem Title: One-Hot Logic for State Machine Inputs (Y1, Y3)

---

**🧾 Problem Statement:**

Design the combinational logic expressions for a state machine using a **one-hot encoding** with the following state assignments:  
`y[5:0] = 000001(A), 000010(B), 000100(C), 001000(D), 010000(E), 100000(F)`

Derive logic expressions for the input signals:
- `Y1` → input of flip-flop for state A (`y[1]`)
- `Y3` → input of flip-flop for state C (`y[3]`)

**Note:** Use direct logic expressions derived from the state diagram assuming **one-hot** encoding. Do not attempt optimization for general non-one-hot inputs. The testbench will validate correctness by checking against such conditions.

---

**📘 Concept Insight:**

For a one-hot encoded FSM, the next-state logic for each state is derived by summing up all current states (with input conditions) that transition to the next desired state.

- `Y1 = y[0] & w`  // Transition into state A occurs from state B if `w=1`
- `Y3 = (y[1] | y[2] | y[4] | y[5]) & ~w`  // Transitions into state C from B, C, E, F when `w=0`

<img width="500" height="540" alt="image" src="https://github.com/user-attachments/assets/cc621227-da04-4900-81a4-854d23728596" />

---

**🔗 HDLBits Link:**  
[HDLBits - exams/2012_q2b](https://hdlbits.01xz.net/wiki/Exams/2012_q2b)

---

**💾 GitHub Solution Link:**  
[GitHub - HDLBits Solutions by Eswar](https://github.com/korrapolueswar/HDLBits-verilog-practice/blob/main/Exams/exams_2012_q2b.sv)

---

**📝 Design Note:**

This FSM problem emphasizes analyzing **incoming transitions** to a target state in a **one-hot coded FSM**, which simplifies to logical OR-ing of all active source states under appropriate input conditions. Always verify against the state diagram for transitions under all `w` conditions.
