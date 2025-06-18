## mt2015_q4 – Hierarchical Design Using Submodules A and B

This problem is from the 2015 midterm (Question 4), where a hierarchical design combines logic from two previously defined submodules to form a composite circuit.

---

### 🧠 Concept Insight  
This design leverages modularity by using two subcircuits:
- **Submodule A**: `z = (x ^ y) & x`  
- **Submodule B**: `z = ~(x ^ y)`  

These are instantiated and their outputs are combined using:  
`z = (w0 & w1) ^ (w0 | w1)`

This final expression simplifies to a specific logical function that processes the results of both submodules.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `x`, `y`: Single-bit binary inputs  
- **Output**:  
  - `z`: Result of combining submodule A and B outputs via: `(A(x, y) & B(x, y)) ^ (A(x, y) | B(x, y))`  

<img width="459" alt="{0F2EC123-F840-49CE-BAAE-6E162E751B75}" src="https://github.com/user-attachments/assets/1470ea3e-9b65-4b87-b7d1-c993c3e25c62" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mt2015_q4)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.12%20Combine%20circuits%20A%20and%20B/mt2015_q4.v)
