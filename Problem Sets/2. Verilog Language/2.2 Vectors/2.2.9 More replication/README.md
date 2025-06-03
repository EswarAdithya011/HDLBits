## Vector5 – Pairwise Comparisons Using Replication and Concatenation

This problem requires computing all pairwise comparisons between five 1-bit signals and outputting a 25-bit vector where each bit indicates equality of the compared pair.

---

### 🧠 Concept Insight  
- The output is a **25-bit vector** representing all pairwise equality comparisons of inputs `a`, `b`, `c`, `d`, and `e`.  
- Each bit is 1 if the corresponding two inputs are equal, 0 otherwise.  
- Using **replication `{}`** and **concatenation `{}`** operators simplifies building the input vectors for comparison.  
- The top vector replicates each input 5 times, and the bottom vector concatenates the five inputs repeated 5 times, allowing a single bitwise XNOR operation to perform all comparisons simultaneously.

---

### 📘 Problem Statement  
Build a module with:

- Five **1-bit inputs**: `a`, `b`, `c`, `d`, `e`  
- A **25-bit output vector** `out` where each bit `out[i]` indicates whether the respective pair of inputs are equal.

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vector5)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.8%20Vector5/Vector5.v)

---

### 🛠 Design Note  
Using vector replication and concatenation enables efficient and compact hardware design for multiple simultaneous bitwise operations, reducing code complexity and improving readability.
