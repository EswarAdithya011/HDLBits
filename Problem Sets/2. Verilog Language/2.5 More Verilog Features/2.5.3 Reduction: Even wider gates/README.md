## Gates100 – 100-Input Logic Gate Using Reduction Operators

This problem demonstrates the power and elegance of **reduction operators** when building large fan-in gates like AND, OR, and XOR gates across wide input vectors.

---

### 🧠 Concept Insight  
- **Reduction operators** allow bitwise logic across all bits of a vector:
  - `& in[99:0]` → Logical AND of all 100 bits.
  - `| in[99:0]` → Logical OR of all 100 bits.
  - `^ in[99:0]` → Logical XOR (parity check) of all 100 bits.
- These operations eliminate the need for manually chaining logic, especially for large vectors like 100-bit buses.

---

### 📘 Problem Statement  
Design a circuit that performs 100-input logic gate operations using the input bus:

- **Input**:  
  - `in[99:0]`: 100-bit input vector  
- **Outputs**:  
  - `out_and`: High only if **all 100 bits** are 1  
  - `out_or`: High if **any one bit** is 1  
  - `out_xor`: High if **an odd number of bits** are 1

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Gates100)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.5%20More%20Verilog%20Features/2.5.3%20Reduction%3A%20Even%20wider%20gates/gates100.v)

<img width="509" alt="{32B8DAF8-E24C-40D4-9E90-85ED3528D88D}" src="https://github.com/user-attachments/assets/a79ef458-a159-49e7-a4a2-ccb60a455ab1" />

---

### 🛠 Design Note  
Reduction operators are ideal for scalable, high-speed logic. In this example, they abstract away the complexity of building **100-input gates**, making your code **clean**, **synthesizable**, and **maintainable**. These techniques are frequently used in **bus integrity checks** and **fault detection** circuits.
