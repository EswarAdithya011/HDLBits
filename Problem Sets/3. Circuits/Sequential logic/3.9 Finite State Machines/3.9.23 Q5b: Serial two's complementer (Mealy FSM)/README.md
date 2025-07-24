# 🧠 HDLBits: Exams/ece241_2014_q5b – 2’s Complementer Mealy FSM (One-Hot Encoding)

---

## 📌 Problem Title: 2’s Complementer Mealy FSM (One-Hot Encoding)

## 📝 Problem Statement

Design a one-input one-output serial 2's complementer **Mealy** state machine using **one-hot encoding**. The input (`x`) is a stream of bits (1 bit per clock cycle), beginning with the least-significant bit of a binary number. The output (`z`) should be the corresponding two’s complement value. The length of the input number is arbitrary. Use **asynchronous active-high reset** (`areset`).

The 2's complement operation begins when reset is deasserted and stops when reset is asserted again.

The given machine is a Mealy FSM and the state diagram is provided in the original problem link.

---

## 💡 Concept Insight

The first `1` from the LSB should be passed directly. All subsequent bits should be inverted. In Mealy-style, output depends on both the **current state** and **input**.

Use **one-hot encoding**:
- `A` (waiting for first 1)
- `B` (inverting from now on)

<img width="500" height="384" alt="image" src="https://github.com/user-attachments/assets/a40697a5-9bfd-452a-8330-1671b5a63829" />

---

## 🔎 HDLBits Link  
[HDLBits – Exams/ece241_2014_q5b](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q5b)

---

## ✅ GitHub Solution Link  
[View on GitHub](https://github.com/USERNAME/HDLBits-solutions/blob/main/FSMs/Exams/ece241_2014_q5b.v)

<img width="500" height="460" alt="image" src="https://github.com/user-attachments/assets/36b5a6dd-6513-4d16-9d00-9a8bc3c2c9d0" />
