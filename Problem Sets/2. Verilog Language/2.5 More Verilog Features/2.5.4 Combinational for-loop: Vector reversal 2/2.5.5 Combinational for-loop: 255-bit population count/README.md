## Popcount255 – 255-bit Population Counter

This problem focuses on computing the **population count**, also known as the **Hamming weight**, which is the total number of '1's present in a binary vector.

---

### 🧠 Concept Insight  
- For a 255-bit input, the goal is to **count all bits that are '1'**.
- A **`for` loop inside a combinational `always @(*)` block** efficiently accumulates the count.
- Since the maximum count from 255 bits is 255, the output should be at least **8 bits** wide.

---

### 📘 Problem Statement  
Design a circuit to perform the following:

- **Input**:  
  - `in[254:0]`: A 255-bit input vector  
- **Output**:  
  - `out[7:0]`: Number of bits set to '1' in the input vector

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Popcount255)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.4%20Vector/2.4.2%20Popcount255/Popcount255.v)

<img width="502" alt="{267F8AD4-C2BE-4638-9E73-BFE7F6CB97EE}" src="https://github.com/user-attachments/assets/12dec2b8-8291-4549-ad97-7480e351010c" />

---

### 🛠 Design Note  
Population counting is common in **error correction**, **compression**, and **data analysis** hardware. The use of a **`for` loop** in Verilog allows summing a dynamic number of bits effectively, enabling scalable designs for wide input vectors.
