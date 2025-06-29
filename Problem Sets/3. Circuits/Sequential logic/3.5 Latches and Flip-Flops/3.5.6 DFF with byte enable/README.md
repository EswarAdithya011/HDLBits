## DFF16E – 16-Bit D Flip-Flop with Byte Enable and Active-Low Synchronous Reset

This module implements **16 D flip-flops** grouped into two bytes (8 bits each), with **per-byte write enable** and **active-low synchronous reset**. Each byte is written only if the corresponding `byteena` bit is set.

---

### 🧠 Concept Insight  
- **byteena[1]** controls `d[15:8]` (upper byte)  
- **byteena[0]** controls `d[7:0]` (lower byte)  
- **resetn (active-low)** is **synchronous**, so reset behavior occurs only on the **rising clock edge**.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Positive-edge clock  
  - `resetn`: Active-low synchronous reset  
  - `byteena[1:0]`: Byte-enable signals  
  - `d[15:0]`: Input data  
- **Output**:  
  - `q[15:0]`: Output registers

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Dff16e)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Sequential%20Logic/4.1%20Flip-Flops/Dff16e.v)

<img width="609" alt="{1D3B4A26-E074-4F96-8446-3865195F4D89}" src="https://github.com/user-attachments/assets/c2418877-c923-4083-8da9-994978152037" />

---

### 🛠 Design Note  
This design pattern is efficient in memory-mapped I/O where selective byte updates are needed. It emphasizes conditional register updates using enable bits and reset control for grouped registers.
