## Adder100 – 100-bit Binary Adder with Carry-In and Carry-Out

This module performs a **100-bit binary addition** of two vectors with a **carry-in** and produces a **100-bit sum** and **carry-out**.

---

### 🧠 Concept Insight  
In Verilog, adding wide vectors with a carry-in is efficiently handled using behavioral arithmetic:
- Use `{}` concatenation to carry out the MSB.
- Example: `{cout, sum} = a + b + cin;`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a[99:0]`, `b[99:0]`: Two 100-bit binary numbers  
  - `cin`: Carry-in  
- **Outputs**:  
  - `sum[99:0]`: 100-bit sum result  
  - `cout`: Carry-out after addition  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Adder100)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.2%20Combinational%20Logic/Adder100.v)

---

### 🛠 Design Note  
This exercise emphasizes **Verilog's ability to handle wide-vector arithmetic** without explicit full adder instantiation, making it suitable for high-performance arithmetic unit design.
