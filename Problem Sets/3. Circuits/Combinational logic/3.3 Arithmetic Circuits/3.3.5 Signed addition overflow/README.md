## Exams/ece241_2014_q1c – 8-bit Signed Adder with Overflow Detection

This module adds two **8-bit 2’s complement signed numbers** and determines whether a **signed overflow** occurred during the addition.

---

### 🧠 Concept Insight  
In 2's complement arithmetic, **overflow** happens when:
- Adding two **positive** numbers gives a **negative** result.
- Adding two **negative** numbers gives a **positive** result.

To detect overflow:
- Compare the sign bits (MSB) of inputs `a` and `b` with the sign bit of the result `s`.
- Formula:  
  `overflow = (a[7] ~^ b[7]) & (a[7] ^ s[7])`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a[7:0]`, `b[7:0]`: Two signed 8-bit numbers  
- **Outputs**:  
  - `s[7:0]`: The 8-bit result of a + b  
  - `overflow`: A flag indicating signed overflow  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q1c)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.3%20Arithmetic%20Circuits/3.3.5%20Signed%20addition%20overflow/ece241_2014_q1c.v)

<img width="533" alt="{B4A91ECA-827F-4633-8B1A-C7723C1957D2}" src="https://github.com/user-attachments/assets/69f286a3-ea5f-48c8-9df3-39b9519869dc" />

---

### 🛠 Design Note  
Understanding signed overflow is **crucial for arithmetic logic design** in CPUs and digital signal processors. This task reinforces how sign bits interact in 2's complement arithmetic.
