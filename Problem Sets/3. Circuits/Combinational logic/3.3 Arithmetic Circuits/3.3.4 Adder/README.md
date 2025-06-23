## Exams/m2014 q4j – 4-Bit Adder Using Full Adders

This task implements a **4-bit ripple-carry adder** using explicitly instantiated full adder modules. The design adds two 4-bit inputs (`x`, `y`) and outputs a 5-bit result `sum`, which includes the final carry-out.

---

### 🧠 Concept Insight  
The ripple-carry adder structure uses a series of full adders, where:
- The `cin` of each adder comes from the `cout` of the previous stage.
- This forms a chain of dependent additions starting from the least significant bit.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `x[3:0]`, `y[3:0]`: 4-bit binary numbers  
- **Output**:  
  - `sum[4:0]`: 5-bit result including the final carry-out  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4j)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.3%20Arithmetic%20Circuits/3.3.4%20Adder/m2014_q4j.v)

---

### 🛠 Design Note  
This exercise highlights the importance of **hierarchical design and modular reuse** in hardware systems. By encapsulating the full adder logic and instantiating it with a generate loop, the design becomes scalable and maintainable for larger bit widths.
