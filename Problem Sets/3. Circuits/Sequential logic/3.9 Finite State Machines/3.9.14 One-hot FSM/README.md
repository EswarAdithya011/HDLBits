# 🔁 FSM Onehot

## 📌 Problem Statement

Implement the state transition and output logic for a **one-hot encoded** FSM. The FSM has 10 states (S0 through S9), an input `in`, and two outputs `out1` and `out2`. Only the current state vector `state[9:0]` is provided. You must derive the `next_state[9:0]` and outputs using **combinational logic**. Do **not** implement the state flip-flops. The output should match the behavior shown in the state transition diagram (not provided here), assuming correct one-hot encoding.

---

## 🧠 Concept Insight

One-hot encoding means that each state is represented by a unique bit in a 10-bit vector. For example, `state[0] = 1` implies the FSM is in state S0. In this format, only one bit is high at any time.

To compute the `next_state` in one-hot FSM:
- Identify current states from which each transition originates.
- For each bit in `next_state`, set it high only if the FSM is currently in a state that transitions into it.

Outputs `out1` and `out2` are asserted only in specific states, as indicated by the diagram.

This problem evaluates your understanding of:
- FSM with one-hot encoding
- Combinational logic derivation from a given transition diagram
- Efficient mapping of transitions and outputs

---

## 🔗 Problem Link

[🔗 HDLBits: FSM – Onehot](https://hdlbits.01xz.net/wiki/Fsm_onehot)

---

## ✅ Solution

[🔗 GitHub: FSM Onehot – Verilog Solution]([https://github.com/EswarAdithya011/HDLBits-verilog-practice/blob/main/FSMs/fsm_onehot.sv](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.14%20One-hot%20FSM/fsm_onehot.v)
