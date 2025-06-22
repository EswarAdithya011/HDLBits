## Fadd – Full Adder

This module implements a **Full Adder**, a key building block in binary addition circuits. It adds three 1-bit inputs — two operands and a carry-in — producing a **sum** and a **carry-out**.

---

### 🧠 Concept Insight  
A Full Adder performs:
- `sum = a ^ b ^ cin`  (3-bit XOR)
- `cout = (a & b) | (b & cin) | (a & cin)`  (Majority logic for carry)

This allows carry propagation in multi-bit binary addition.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a`, `b`: 1-bit operands  
  - `cin`: Carry-in from previous stage  
- **Outputs**:  
  - `sum`: Bit-wise sum result  
  - `cout`: Carry-out for next stage  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Fadd)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.3%20Arithmetic%20Circuits/3.3.2%20Full%20adder/fadd.v)

---

### 🛠 Design Note  
Full adders are chained together to form ripple-carry adders or more efficient multi-bit adders. Mastering their implementation is foundational for digital arithmetic design.
