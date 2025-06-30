## Exams/m2014_q4b – D Flip-Flop with Asynchronous Reset

This module implements a **positive-edge-triggered D flip-flop** with an **active-high asynchronous reset**.

---

### 🧠 Concept Insight  
- A **D flip-flop** captures the input `d` on the **rising edge** of `clk`.
- When `ar=1`, the flip-flop is **immediately reset**, regardless of the clock.
- Asynchronous reset is handled by including `ar` in the **sensitivity list** of the `always` block.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `d`: Data input  
  - `ar`: Asynchronous reset (active high)  
- **Output**:  
  - `q`: Flip-flop output

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4b)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.5%20Latches%20and%20Flip-Flops/3.5.8%20DFF(1)/m2014_q4b.v)

---

### 🛠 Design Note  
This example strengthens understanding of **reset handling**, crucial in digital design for both simulation and real hardware synthesis.
