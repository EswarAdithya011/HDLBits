## Exams/m2014_q4f – AND Gate with Inverted Input

This task focuses on implementing a logic gate configuration using **primitive gates** in Verilog.

---

### 🧠 Concept Insight  
The output logic is defined as:  
`out = in1 & ~in2`  
This is an **AND gate** where the second input is first inverted. It is commonly used in conditional logic and enable circuits.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `in1`, `in2`: 1-bit signals  
- **Output**:  
  - `out`: Logical AND of `in1` and NOT of `in2`

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4f)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.4%20Another%20gate/m2014_q4f.v)

---

### 🛠 Design Note  
Using the built-in `and` primitive allows direct gate-level implementation. Inversion using the unary `~` operator is cleanly integrated into the input connection, making it concise and synthesis-friendly.
