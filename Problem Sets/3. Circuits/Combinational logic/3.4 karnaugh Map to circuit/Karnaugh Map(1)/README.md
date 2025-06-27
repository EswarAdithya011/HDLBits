## Exams/m2014_q3 – Karnaugh Map Based Logic Function

This module implements a logic function derived from a 4-variable Karnaugh map with some **don't-care** conditions. The final simplified expression is realized using standard logic operations.

---

### 🧠 Concept Insight  
From the given K-map simplification:
- The logic function simplifies to:  
  `f = (~x[1] & x[3]) | (x[2] & x[4])`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `x[4:1]`: A 4-bit vector input  
- **Output**:  
  - `f`: Output derived from simplified logic  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q3)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Exams/Midterm%202014/Q3.v)

---

### 🛠 Design Note  
This problem emphasizes **optimizing logic expressions** using Karnaugh maps. Don’t-care terms play a critical role in grouping minterms for simpler expressions, enhancing design efficiency.
