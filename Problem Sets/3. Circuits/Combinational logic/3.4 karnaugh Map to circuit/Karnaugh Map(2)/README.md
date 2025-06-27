## Exams/2012_q1g – K-map Logic Function Implementation

This module implements a logic function based on a **4-variable Karnaugh map**, simplified to reduce the gate count while preserving correct logical behavior.

---

### 🧠 Concept Insight  
The Karnaugh map simplification yields the optimized Boolean expression:  
`f = (x[3] & (~x[1] | x[2] & x[4])) | (~x[2] & ~x[4])`  
This uses a mix of AND, OR, and NOT operations to represent grouped minterms.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `x[4:1]`: A 4-bit input vector  
- **Output**:  
  - `f`: Output determined by simplified logic expression  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/2012_q1g)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Exams/Finals%202012/Q1g.v)

---

### 🛠 Design Note  
This task tests your ability to interpret a Karnaugh map and implement the **minimal logical expression** directly in Verilog. Efficient translation reduces circuit complexity and improves performance.
