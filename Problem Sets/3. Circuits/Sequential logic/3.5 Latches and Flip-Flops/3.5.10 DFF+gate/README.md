## Exams/m2014_q4d – Feedback D Flip-Flop with XOR Logic

This module implements a **D flip-flop** with feedback logic, where the next value is computed using an **XOR** between the current input and the flip-flop output.

---

### 🧠 Concept Insight  
- The circuit contains **combinational logic** (`in ^ out`) feeding into a **D flip-flop**.
- At each **rising edge** of `clk`, the output is updated as:  
  `out <= in ^ out`  
  This behavior results in **toggling** when `in = 1`, and **holding** when `in = 0`.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `in`: Input bit  
- **Output**:  
  - `out`: Registered output

<img width="450" alt="{3C2AFDD7-7693-4A43-8476-7ADCDA9D542F}" src="https://github.com/user-attachments/assets/9093795c-abf4-421b-b23b-34ef34835c6b" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4d)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Sequential%20Logic/4.1%20Flip-Flops/Exams_m2014_q4d.v)

---

### 🛠 Design Note  
This type of structure is used in **toggle flip-flops** or **XOR-based counters**, useful in encoding schemes or lightweight cryptographic designs.
