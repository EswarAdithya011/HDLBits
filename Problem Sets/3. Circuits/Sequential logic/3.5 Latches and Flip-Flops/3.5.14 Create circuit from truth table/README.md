## Exams/ece241_2013_q7 – JK Flip-Flop Using D Flip-Flop

This module implements a **JK flip-flop** behavior using only a **D flip-flop** and logic gates. The JK flip-flop is edge-triggered on the positive edge of `clk`.

---

### 🧠 Concept Insight  
A JK flip-flop can be implemented using a D flip-flop by generating the D input through logic derived from the JK truth table:  
**D = (J & ~Q) | (~K & Q)**

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `j`, `k`: JK inputs  
- **Output**:  
  - `Q`: Output that mimics JK behavior

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q7)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/5.%20Finite%20State%20Machines/Exams_ece241_2013_q7.v)

<img width="495" alt="{EEDF2462-D03E-4190-9BE3-D86B33F25E92}" src="https://github.com/user-attachments/assets/cfb21eba-a221-48dc-b711-bb5a4893315c" />

---

### 🛠 Design Note  
This implementation uses the JK-to-D flip-flop conversion technique:  
- `D = J·~Q + ~K·Q`  
This formula replicates the toggle, set, and reset functionalities using combinational logic in front of the DFF.
