## DFF8R – 8-Bit D Flip-Flop with Synchronous Reset

This module implements an **8-bit register with synchronous reset**. Each flip-flop captures the value from input `d` on the **positive edge** of `clk`, unless the **synchronous reset** signal `reset` is asserted, in which case all outputs `q` are cleared to `0`.

---

### 🧠 Concept Insight  
A **synchronous reset** means the reset only takes effect **on the clock edge**, just like a data load. This ensures **predictable behavior in clocked systems**, especially when designing state machines or pipelines.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `reset`: Active-high synchronous reset  
  - `d[7:0]`: 8-bit data input  
- **Output**:  
  - `q[7:0]`: 8-bit data output  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Dff8r)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.5%20Latches%20and%20Flip-Flops/3.5.3%20DFF%20with%20reset/dff8r.v)

<img width="574" alt="{837AB5D6-6373-4BEF-88B5-EDCDA094B2AE}" src="https://github.com/user-attachments/assets/618e57fa-2cc7-44a3-bcdc-472bc90e0d53" />

---

### 🛠 Design Note  
Use synchronous reset when the reset condition must align with your system’s clock boundaries. This is important in pipelined or sequential systems where control must remain deterministic.
