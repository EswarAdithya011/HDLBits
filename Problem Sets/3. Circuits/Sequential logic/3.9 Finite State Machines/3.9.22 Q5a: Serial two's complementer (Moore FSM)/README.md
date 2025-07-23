# FSM: Serial 2's Complementer – Moore Machine

## 🧩 Problem Statement

Design a **Moore-type Finite State Machine (FSM)** that performs **serial 2's complement** on a binary number received one bit at a time. The input `x` is a sequence of bits starting from the **Least Significant Bit (LSB)** and moving toward the **Most Significant Bit (MSB)**, with **one bit arriving per clock cycle**.

The FSM should output `z`, the **2's complement** of the input, also serially.

Key requirements:
- The FSM should be of **Moore type**, meaning output depends only on the **current state**.
- Input numbers can be of **arbitrary length**.
- The conversion starts **when the asynchronous reset is deasserted** (`areset=0`) and stops when reset is asserted (`areset=1`).

---

## 📚 Concept Insight

The **2's complement** of a binary number is obtained by:
1. **Copying bits as-is** from LSB until the **first '1'** is encountered (inclusive).
2. Then **inverting all remaining bits**.

Since the LSB comes first, this can be implemented using:
- **State S0**: Pass bits until the first `1` is seen (transition point).
- **State S1**: Start inverting bits from this point onward.

This behavior is best captured using a **Moore FSM**, with the output logic built into the states rather than transitions.

<img width="500" height="170" alt="image" src="https://github.com/user-attachments/assets/d5e1e48a-2a2c-4dc2-8f97-f191342d724b" />

---

## 🔗 HDLBits Problem Link

[HDLBits – FSM: Serial 2's Complement (Moore)](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q5b)

---

## ✅ GitHub Solution Link

[GitHub – FSM Serial 2's Complement](https://github.com/your-github-id/HDLBits-SystemVerilog/blob/main/FSMs/fsm_serial2s_moore.sv)

<img width="500" height="444" alt="image" src="https://github.com/user-attachments/assets/73d5bc20-14bb-4a61-9007-be84d896ecb5" />

---

## 🖼️ Relevant FSM Diagram

```mermaid
stateDiagram-v2
    direction LR
    [*] --> S0: areset=1
    S0 --> S0: x=0 / z=0
    S0 --> S1: x=1 / z=1
    S1 --> S1: x=0 / z=1
    S1 --> S1: x=1 / z=0
