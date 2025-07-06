## Exams/ece241_2014_q7b → `countbcd` – 1Hz Pulse Generator using 3 BCD Counters

This module creates a **1 Hz pulse (`OneHertz`)** from a 1000 Hz input clock using **three cascaded BCD (mod-10) counters**. The output pulse is asserted for **one clock cycle per second**.

---

### 🧠 Concept Insight  
- To divide 1000 Hz into 1 Hz, we need a **divide-by-1000 counter**.  
- We use **three BCD counters** (modulo-10) connected in series:  
  - 10 × 10 × 10 = 1000  
- A pulse is generated when the most significant counter rolls over from 9 to 0.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: 1000 Hz clock  
  - `reset`: Active-high synchronous reset  
- **Outputs**:  
  - `OneHertz`: 1-cycle pulse every second  
  - `c_enable[2:0]`: Enable signals for the 3 internal counters

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q7b)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.6%20Counters/3.6.6%20Counter%201000/ece241_2014_q7b.v)

---

### 🛠 Design Note  
- `c_enable[0] = 1'b1` (always enabled)  
- `c_enable[1] = (Q0 == 4'd9)`  
- `c_enable[2] = (Q0 == 4'd9) & (Q1 == 4'd9)`  
- `OneHertz = (Q0 == 4'd9) & (Q1 == 4'd9) & (Q2 == 4'd9)` (i.e., all 3 counters = 9)

This design mimics a **cascaded ripple enable logic** and keeps the clocking domain flat, as all counters share the same 1000 Hz clock directly.
