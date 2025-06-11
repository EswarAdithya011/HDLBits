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
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.5%20More%20Verilog%20Features/2.5.5%20Combinational%20for-loop%3A%20255-bit%20population%20count/popcount255.v)

<img width="605" alt="{AD068124-C0BC-4B3C-A88F-525A02F9DD21}" src="https://github.com/user-attachments/assets/1e218d01-62ff-4a76-b134-491d0fdc3548" />

---

### 🛠 Design Note  
Population counting is common in **error correction**, **compression**, and **data analysis** hardware. The use of a **`for` loop** in Verilog allows summing a dynamic number of bits effectively, enabling scalable designs for wide input vectors.
