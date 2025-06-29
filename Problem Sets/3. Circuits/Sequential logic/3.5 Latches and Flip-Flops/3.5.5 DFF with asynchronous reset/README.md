## DFF8AR – 8-Bit D Flip-Flop with Active High **Asynchronous Reset**

This module implements **8 positive edge-triggered D flip-flops**, each with an **active high asynchronous reset**. If `areset` is asserted, the output resets **immediately** to 0, regardless of the clock.

---

### 🧠 Concept Insight  
- **Asynchronous reset**: The reset takes effect **immediately** upon being high, independent of the clock.  
- Used in designs requiring immediate reset behavior (e.g., power-on reset).  
- In Verilog, this is modeled using `always @(posedge clk or posedge areset)`.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Positive-edge clock  
  - `areset`: Active-high asynchronous reset  
  - `d[7:0]`: 8-bit input data  
- **Output**:  
  - `q[7:0]`: 8-bit output

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Dff8ar)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.5%20Latches%20and%20Flip-Flops/3.5.5%20DFF%20with%20asynchronous%20reset/dff8ar.v)

<img width="579" alt="{5A395AFD-8551-4B02-BAE8-9F7756BA330A}" src="https://github.com/user-attachments/assets/365a4c7f-52aa-4e74-a7ef-e7a2b43fa235" />

---

### 🛠 Design Note  
Asynchronous resets are common in real-world RTL due to their predictable hardware behavior during unexpected power-up or fault conditions. However, they need careful timing to avoid metastability issues.
