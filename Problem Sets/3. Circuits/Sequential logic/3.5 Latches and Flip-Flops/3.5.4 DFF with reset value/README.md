## DFF8P – 8-Bit D Flip-Flop with Synchronous Reset to 0x34 on Negative Edge

This module implements an **8-bit register** that updates on the **negative edge of the clock**. If the **synchronous reset** is active (high), it resets the register content to `8'h34` instead of `0`.

---

### 🧠 Concept Insight  
- **Synchronous reset**: Reset action is taken on the **clock edge** only.  
- **Negative edge-triggered**: The D flip-flops respond to the **falling edge** of `clk`.  
- **Preset value**: Instead of clearing to 0, the register resets to a **defined constant** (`0x34`), which is common in certain control or initialization conditions.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal (negative edge)  
  - `reset`: Active-high synchronous reset  
  - `d[7:0]`: 8-bit input data  
- **Output**:  
  - `q[7:0]`: 8-bit output data  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Dff8p)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Sequential%20Logic/4.1%20Flip-Flops/Dff8p.v)

<img width="578" alt="{27BFE479-DC3F-4378-96DB-76B9F4781303}" src="https://github.com/user-attachments/assets/9daf4dad-0636-4036-9b80-5cb4bd518632" />

---

### 🛠 Design Note  
Presetting registers to specific values is useful in FSMs and control paths. Negative-edge triggering is less common but necessary in dual-edge systems or special timing circuits.
