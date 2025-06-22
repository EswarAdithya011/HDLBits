## Adder3 – 3-Bit Ripple-Carry Adder using Full Adders

This module builds a **3-bit ripple-carry adder** using three instances of a full adder (`fadd`). It adds two 3-bit binary numbers (`a` and `b`) along with an initial carry-in (`cin`) and produces a 3-bit sum and intermediate carry-outs.

---

### 🧠 Concept Insight  
A ripple-carry adder chains multiple full adders:
- Each full adder adds the corresponding bits of `a` and `b` plus the carry from the previous stage.
- Carries propagate from LSB to MSB.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a[2:0]`, `b[2:0]`: 3-bit binary numbers  
  - `cin`: Initial carry-in  
- **Outputs**:  
  - `sum[2:0]`: 3-bit sum  
  - `cout[2:0]`: Carry-outs from each full adder stage  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Adder3)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/3.1%20Arithmetic/Adder3.v)

<img width="451" alt="{733ACB61-CEE5-4C03-A1A5-55510DC78AE0}" src="https://github.com/user-attachments/assets/5b988738-ef3e-400b-a8e7-d4add0992202" />

---

### 🛠 Design Note  
This exercise emphasizes **modular design** by instantiating full adders and connecting them sequentially. Understanding this ripple-carry structure is vital for scaling up to wider adders and optimizing arithmetic logic.
