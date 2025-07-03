## EdgeDetect – 8-bit Positive Edge Detector

This module implements a **positive edge detector** for each bit of an 8-bit input signal. The output flags (`pedge`) go high for one clock cycle whenever a corresponding input bit transitions from `0` to `1`.

---

### 🧠 Concept Insight  
To detect a 0→1 transition, compare the current input with its delayed version from the previous clock cycle using the logic:  
**pedge[i] = ~prev_in[i] & in[i]**

This detects a rising edge on each bit of the 8-bit signal.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `in[7:0]`: 8-bit input signal  
- **Output**:  
  - `pedge[7:0]`: One-clock-cycle pulse for each rising edge on `in`

<img width="588" alt="{6DCFA45B-10CF-4C6A-B577-48C50DDE489F}" src="https://github.com/user-attachments/assets/41c9b62f-c28e-4dad-b0fe-d9e5126624d9" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Edgedetect)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/5.%20Finite%20State%20Machines/Edgedetect.v)

<img width="500" alt="{DF07C943-22E2-4C77-87EE-81C8782B7BE7}" src="https://github.com/user-attachments/assets/46f6b098-641d-4755-b7b1-99774596a281" />

---

### 🛠 Design Note  
A **register** is used to store the previous input. The current and previous values are compared bitwise to detect a rising edge. This is a common structure in edge detection logic, useful in FSM inputs and synchronizers.
