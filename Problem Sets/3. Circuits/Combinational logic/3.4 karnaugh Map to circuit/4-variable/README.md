## Kmap2 – Logic Minimization using Karnaugh Map (4 Inputs)

This module implements a logic function derived from a **4-variable Karnaugh map**. The expression is minimized using the **Sum of Products (SOP)** technique for optimal hardware efficiency.

---

### 🧠 Concept Insight  
Karnaugh maps simplify complex Boolean expressions by visually grouping adjacent 1’s. Each group corresponds to a product term (AND) in the final sum-of-products expression.

Minimized expression from the K-map:  
`out = a'c'd' + b'c'd' + a'b'c' + ab'd + bcd + a'cd'`

This logic covers all necessary conditions where output should be high (1) based on the provided truth table/K-map.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a`, `b`, `c`, `d`: Four boolean inputs  
- **Output**:  
  - `out`: Simplified output from the K-map  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Kmap2)

<img width="331" alt="{233CC60E-4DD0-43E8-ABDA-5FD867E61E2F}" src="https://github.com/user-attachments/assets/94bb8592-fb37-4290-a730-bde8ec0c97a8" />

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.3%20Karnaugh%20Map/Kmap2.v)

<img width="579" alt="{0308E911-A0FA-4D03-BB59-7BA4DA138E30}" src="https://github.com/user-attachments/assets/c8abaa7c-11d0-49db-b1b5-eb39034111c5" />

---

### 🛠 Design Note  
This problem reinforces **K-map grouping strategies** and helps bridge theoretical Boolean simplification with real-world RTL design. Efficient logic synthesis directly impacts area and timing in digital circuits.
