## DualEdge – Emulating Dual-Edge Triggered Flip-Flop in FPGA

This module functionally mimics a **dual-edge triggered flip-flop** using separate flip-flops triggered on the positive and negative edges of the clock. Since real FPGAs don't support dual-edge triggering natively, we emulate it using two DFFs and a clock-dependent multiplexer.

---

### 🧠 Concept Insight  
- One register captures the value of `d` on the **positive edge**
- Another captures the value on the **negative edge**
- A **combinational mux** selects between them depending on the clock level
  - `q = q_temp[0]` when `clk = 1`  
  - `q = q_temp[1]` when `clk = 0`

This way, a value change on either edge of `clk` updates `q`.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal (dual-edge behavior to be emulated)  
  - `d`: Input data  
- **Output**:  
  - `q`: Output which reflects `d` on **both edges of `clk`**  

<img width="453" alt="{9E48288E-7BBB-4B82-B064-B1E9C121AA3C}" src="https://github.com/user-attachments/assets/1e317764-1b4d-43d9-806a-7e316f663ec9" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Dualedge)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.5%20Latches%20and%20Flip-Flops/3.5.18%20Dual-edge%20triggered%20flip-flop/dualedge.v)

<img width="499" alt="{D3396DCC-40D5-4903-9F9A-4DBF114BCD8D}" src="https://github.com/user-attachments/assets/64767f73-18fb-40ee-8ef9-3f9161cc821f" />

---

### 🛠 Design Note  
This is a clever hardware emulation technique for dual-edge triggering when you're restricted to single-edge DFFs. It’s practical for test benches or behavioral simulation but avoid using this style in critical FPGA logic due to timing uncertainty and possible glitches.
