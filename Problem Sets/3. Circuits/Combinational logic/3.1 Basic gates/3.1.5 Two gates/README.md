## Exams/m2014_q4g – Combinational Logic with XOR and XNOR

This exercise involves building a circuit using basic logic operations: XOR and XNOR.

---

### 🧠 Concept Insight  
The expression is:  
`out = (~(in1 ^ in2)) ^ in3`  
Breaking it down:
- `in1 ^ in2`: XOR of the first two inputs.
- `~(in1 ^ in2)`: XNOR operation between `in1` and `in2`.
- The result is XOR'ed with `in3`.

This structure is useful in parity checks and conditional inversion scenarios.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `in1`, `in2`, `in3`: 1-bit signals  
- **Output**:  
  - `out`: XOR of XNOR(in1, in2) and in3

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4g)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.5%20Two%20gates/m2014_q4g.v)

---

### 🛠 Design Note  
The use of bitwise operators allows a direct and clean implementation of the logic. This circuit computes conditional logic and demonstrates how combining XOR and XNOR can yield more complex control signals.
