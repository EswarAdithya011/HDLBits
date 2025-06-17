## mt2015_eq2 – 2-Bit Equality Comparator

This exercise is based on a 2015 midterm question. It requires implementing a comparator that checks equality between two 2-bit vectors.

---

### 🧠 Concept Insight  
Equality comparison between two multi-bit vectors can be directly done using the `==` operator in Verilog.  
If both bits in `A[1:0]` match those in `B[1:0]`, the output `z` is set to 1, else 0.

Logic:  
`z = (A == B) ? 1 : 0;`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `A[1:0]`: 2-bit input  
  - `B[1:0]`: 2-bit input  
- **Output**:  
  - `z`: 1 if `A == B`, else 0  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mt2015_eq2)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.1%20Gates/Mt2015_eq2.v)

---

### 🛠 Design Note  
This example demonstrates the utility of comparison operators in Verilog to simplify digital logic, especially for equality detection in finite word-length signals.
