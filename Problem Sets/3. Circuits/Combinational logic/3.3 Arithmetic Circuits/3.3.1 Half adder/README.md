## Hadd – Half Adder

This module implements a **Half Adder**, a fundamental building block in digital arithmetic circuits. It adds two single-bit binary numbers and produces a **sum** and a **carry-out**.

---

### 🧠 Concept Insight  
A Half Adder performs the following logic:
- `sum = a ^ b`  (XOR gate)
- `cout = a & b`  (AND gate)

Unlike a full adder, the half adder does **not** handle a carry-in input.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a`, `b`: 1-bit binary operands  
- **Outputs**:  
  - `sum`: Result of a + b without carry-in  
  - `cout`: Carry generated from a + b  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Hadd)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.3%20Arithmetic%20Circuits/3.3.1%20Half%20adder/hadd.v)

---

### 🛠 Design Note  
Half adders are commonly used in constructing full adders and larger adders like ripple-carry or carry-lookahead adders. They are also essential in multiplier circuits where partial product generation is involved.
