## Gates4 – 4-Input Logic Gates

This problem involves building a combinational circuit that takes a 4-bit input vector and computes the AND, OR, and XOR of all four bits.

---

### 🧠 Concept Insight  
- **AND Gate (`&`)**: Produces 1 if all inputs are 1, otherwise 0.  
- **OR Gate (`|`)**: Produces 1 if any input is 1, otherwise 0.  
- **XOR Gate (`^`)**: Produces 1 if an odd number of inputs are 1, otherwise 0.  
- Applying these operators to a vector applies the operation across all bits, reducing the vector to a single bit output.

---

### 📘 Problem Statement  
Build a combinational circuit with:

- A **4-bit input vector** `in`  
- Three **1-bit outputs**:  
  - `out_and` – result of ANDing all 4 bits of `in`  
  - `out_or` – result of ORing all 4 bits of `in`  
  - `out_xor` – result of XORing all 4 bits of `in`  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Gates4)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.8%20Gates4/Gates4.v)

<img width="586" alt="{1EE9B823-9A8B-48A3-A2A3-5F35A6935313}" src="https://github.com/user-attachments/assets/517f62b7-0788-496a-852f-219eecd66ee5" />

---

### 🛠 Design Note  
This exercise reinforces the concept of reduction operators in Verilog which apply bitwise logic across all bits of a vector, producing a single output bit. Understanding these helps in efficient hardware design for condition checks and parity computations.
