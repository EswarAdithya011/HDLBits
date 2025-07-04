<img width="518" alt="{ACB0E41A-3634-4E2C-B8C0-25DAF67E54A4}" src="https://github.com/user-attachments/assets/5223f2ff-bd0d-4603-b3e1-aa08e5cadf67" />## EdgeCapture – 1→0 Transition Capture with Synchronous Reset

This module detects **falling edges (1→0)** for each bit in a 32-bit vector and **captures them permanently** until a synchronous reset clears them.

---

### 🧠 Concept Insight  
Each bit behaves like an **SR flip-flop**:  
- **Set** condition: Detected on a falling edge (`prev_in = 1`, `in = 0`)  
- **Reset** condition: Occurs when `reset = 1` during a rising clock edge  
- Set is latched using: `out <= out | (~in & prev_in);`  
- Reset has precedence over set

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `reset`: Active-high synchronous reset  
  - `in[31:0]`: 32-bit input vector  
- **Output**:  
  - `out[31:0]`: Latched vector capturing 1→0 transitions per bit  

<img width="518" alt="{ACB0E41A-3634-4E2C-B8C0-25DAF67E54A4}" src="https://github.com/user-attachments/assets/0863a2e8-6f65-4dab-8415-05558b3e7780" />


🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Edgecapture)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/5.%20Finite%20State%20Machines/Edgecapture.v)

<img width="524" alt="{235030A4-3854-43FA-99D4-1B4CB302F04F}" src="https://github.com/user-attachments/assets/d5d6dc69-099e-4105-9aff-efe36e8df3e8" />

---

### 🛠 Design Note  
This type of circuit is useful for **event capture**, **fault detection**, or **flagging condition loss** until explicitly cleared by reset. It models an **edge-triggered event memory** with reset dominance.
