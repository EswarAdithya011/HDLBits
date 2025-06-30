## Exams/m2014_q4c – D Flip-Flop with Synchronous Reset

This module implements a **positive-edge-triggered D flip-flop** with an **active-high synchronous reset**.

---

### 🧠 Concept Insight  
- A **synchronous reset** only affects the flip-flop at the **rising edge of the clock**.
- If `r=1` at the rising edge of `clk`, `q` is reset to 0.
- If `r=0`, `q` follows the input `d`.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `d`: Data input  
  - `r`: Synchronous reset (active high)  
- **Output**:  
  - `q`: Flip-flop output

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4c)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.5%20Latches%20and%20Flip-Flops/3.5.9%20DFF(2)/m2014_q4c.v)

---

### 🛠 Design Note  
Synchronous resets provide **timing predictability** in complex synchronous systems, especially when using standard cell-based ASIC or FPGA designs.
