# FSM: Sequence Detector (101) – Mealy Machine

## 🧩 Problem Statement

Design a **Mealy-type Finite State Machine (FSM)** to detect the bit sequence `"101"` on an input signal named `x`. The FSM must assert an output signal `z` to logic-1 **when the sequence "101" is detected**.

Additional specifications:
- The FSM should recognize **overlapping sequences** (e.g., input `10101` should detect two sequences).
- The FSM should use **only 3 states**.
- The reset signal `aresetn` is an **active-low asynchronous reset**.

---

## 📚 Concept Insight

A Mealy FSM generates outputs based on both the current state and current inputs. Recognizing the `"101"` pattern with 3 states requires:
- Efficient state transitions to support overlapping sequence detection.
- Careful state assignments to meet the 3-state constraint.
- Active-low reset control logic to initialize the FSM properly.

---

## 🔗 HDLBits Problem Link

[HDLBits – FSM: 101 Mealy](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q5a)

---

## ✅ GitHub Solution Link

[GitHub – FSM 101 Mealy](https://github.com/your-github-id/HDLBits-SystemVerilog/blob/main/FSMs/fsm_101_mealy.sv)

<img width="500" height="450" alt="image" src="https://github.com/user-attachments/assets/1dfa8e6d-9f63-470c-99b8-741dcb2939b7" />
