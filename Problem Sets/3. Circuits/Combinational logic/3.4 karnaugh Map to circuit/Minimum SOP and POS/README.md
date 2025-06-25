## Exams/ece241_2013_q2 – SOP and POS from Input Conditions

This module defines a digital logic system with 4 inputs and 2 outputs, where specific input combinations are known to occur or never occur. The outputs implement **minimum Sum-of-Products (SOP)** and **Product-of-Sums (POS)** expressions derived from the specified input values.

---

### 🧠 Concept Insight  
Valid minterms (output = 1): `2 (0010)`, `7 (0111)`, `15 (1111)`  
Don’t-care terms: `3, 8, 11, 12`  
These are simplified into:

- **SOP (Sum of Products)**:  
  `(~a & ~b & c) | (c & d)`  
- **POS (Product of Sums)**:  
  `c & (~b | d) & (~a | d)`

---

### 📘 Problem Statement  
- **Inputs**: `a`, `b`, `c`, `d`  
- **Outputs**:  
  - `out_sop`: Output in minimum SOP form  
  - `out_pos`: Output in minimum POS form  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q2)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Exams/ECE241%202013%20Q2.v)

---

### 🛠 Design Note  
This task is a classic example of optimizing logic based on known input conditions, demonstrating how **minimization techniques** such as K-map simplification guide the design of efficient digital circuits.
