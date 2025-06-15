## Exams/m2014_q4e – 2-Input NOR Gate

This problem evaluates your understanding of **basic logic gates** using Verilog's built-in gate primitives.

---

### 🧠 Concept Insight  
A NOR gate outputs logic high (`1`) only when **both inputs are low (`0`)**. It is the negation of the OR operation:
- `out = ~(in1 | in2)`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `in1`, `in2`: 1-bit inputs  
- **Output**:  
  - `out`: Result of NOR operation on `in1` and `in2`

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4e)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.3%20NOR/m2014_q4e.v)

---

### 🛠 Design Note  
Using Verilog's built-in `nor` primitive simplifies gate-level modeling and ensures precise logic synthesis. It is a direct and synthesis-friendly way to describe the gate's behavior without using assign statements or always blocks.
