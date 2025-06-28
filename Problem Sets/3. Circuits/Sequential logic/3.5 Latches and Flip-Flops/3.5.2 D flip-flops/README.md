## DFF8 – 8-Bit D Flip-Flop Register

This module implements a **register of 8 D flip-flops**. Each flip-flop captures one bit from the 8-bit input `d` on the **positive edge** of the clock signal `clk` and stores it in the corresponding bit of output `q`.

---

### 🧠 Concept Insight  
An **8-bit register** is a group of 8 D flip-flops operating in parallel. This is a basic storage element in digital systems for holding 8-bit values such as bytes or instruction segments.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock input (shared for all DFFs)  
  - `d[7:0]`: 8-bit data input  
- **Output**:  
  - `q[7:0]`: 8-bit data output holding the stored values  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Dff8)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Sequential%20Logic/4.1%20Flip-Flops/Dff8.v)

<img width="399" alt="{EAE09214-0733-4ED2-AE23-41B08F6315AB}" src="https://github.com/user-attachments/assets/50c7ca3a-368f-43c6-899c-6d16ca824fd4" />

---

### 🛠 Design Note  
Using `always @(posedge clk)` ensures all 8 bits are **synchronously updated**. This register can serve as part of a pipeline stage, counter, buffer, or memory interface.
