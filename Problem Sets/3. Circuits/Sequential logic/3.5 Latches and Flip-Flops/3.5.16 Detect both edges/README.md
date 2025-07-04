## EdgeDetect2 – 8-bit Any-Edge Detector

This module implements a **change detector** for an 8-bit input vector. It flags a bit high for one clock cycle whenever the corresponding input bit **changes value** (i.e., detects both rising and falling edges).

---

### 🧠 Concept Insight  
To detect *any* transition (0→1 or 1→0), we use the XOR logic between the current input and its delayed (previous) version:  
**anyedge[i] = in[i] ^ prev_in[i]**

This captures any edge per bit.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `in[7:0]`: 8-bit input signal  
- **Output**:  
  - `anyedge[7:0]`: Pulse for one cycle when any bit toggles

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Edgedetect2)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.5%20Latches%20and%20Flip-Flops/3.5.16%20Detect%20both%20edges/edgedetect2.v)

---

### 🛠 Design Note  
This design uses a **1-clock-cycle delay register** (`prev_in`) and applies a **bitwise XOR** to detect both positive and negative edges. It's often used in toggling signals, button press detection, and glitch filtering.
