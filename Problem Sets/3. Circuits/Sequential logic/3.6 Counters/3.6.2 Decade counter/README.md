## Count10 – 4-Bit Synchronous Decade Counter (Modulo-10)

This module implements a **4-bit synchronous decade counter** that cycles from 0 to 9 and then wraps back to 0. The counter includes an active-high synchronous reset.

---

### 🧠 Concept Insight  
- Counter counts from **0 to 9** (decimal), then resets to 0
- Reset is **synchronous**, acting only on the rising edge of the clock
- Counter wraps manually using a conditional check: `q == 9`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock input  
  - `reset`: Synchronous active-high reset  
- **Output**:  
  - `q[3:0]`: 4-bit counter output cycling from 0 to 9  

<img width="489" alt="{355B130E-9286-4BFA-A13A-D62C8F98DA6B}" src="https://github.com/user-attachments/assets/b9fb6e27-78cf-48f9-a83c-37a4254b95fe" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Count10)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.6%20Counters/3.6.2%20Decade%20counter/count10.v)

<img width="642" alt="{551755AA-DC13-41DA-86E5-320FEBA57902}" src="https://github.com/user-attachments/assets/d7c6545b-5c61-4289-a580-611138386a65" />

---

### 🛠 Design Note  
This design illustrates how to implement custom modulus counters in Verilog. Instead of allowing natural overflow (as in power-of-two counters), a specific condition (`q == 9`) is used to reset manually after reaching the maximum count.
