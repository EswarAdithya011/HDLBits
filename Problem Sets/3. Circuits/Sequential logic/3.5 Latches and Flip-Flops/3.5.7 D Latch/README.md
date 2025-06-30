## Exams/m2014_q4a – D-Latch with Enable

This module implements a **D-latch** that is **level-sensitive**, not edge-triggered. The latch is **transparent** when `ena` is high and **holds its value** when `ena` is low.

---

### 🧠 Concept Insight  
- A D-latch is **enabled** when `ena=1`: `q` follows `d`.
- When `ena=0`, `q` retains its **previous** value.
- Implemented using a **level-sensitive always block** with **non-blocking assignment (`<=`)**.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `d`: Data input  
  - `ena`: Enable signal  
- **Output**:  
  - `q`: Latched output

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4a)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Sequential%20Logic/4.2%20Latches/Exams_m2014_q4a.v)

---

### 🛠 Design Note  
Expect Quartus or other tools to warn about **inferred latches**, which is normal here. This problem reinforces understanding of latch behavior—**critical for avoiding unintentional latches** in real designs.
