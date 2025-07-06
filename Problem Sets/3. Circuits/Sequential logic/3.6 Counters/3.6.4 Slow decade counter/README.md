## Countslow – Decade Counter with Enable

This module implements a **4-bit synchronous decade counter** that counts from **0 to 9**. Unlike a basic counter, this design includes a **slowena (enable) signal** to control when the counter should increment. The counter also features a **synchronous active-high reset**.

---

### 🧠 Concept Insight  
- `reset`: Synchronously resets the counter to 0  
- `slowena`: Acts like a gate to control whether the counter should increment on the clock edge  
- When `q == 9`, the next value wraps to 0  
- Counting only happens when `slowena == 1`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock input  
  - `reset`: Synchronous reset input  
  - `slowena`: Enable signal (when high, allows incrementing)  
- **Output**:  
  - `q[3:0]`: 4-bit counter output cycling from 0 to 9  

![image](https://github.com/user-attachments/assets/fb0a64a2-2e5b-46ec-ad0a-2f7778e193a9)

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Countslow)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Sequential%20Logic/Countslow.v)

![image](https://github.com/user-attachments/assets/70a81b4a-4f9a-4976-b92e-f0d0f842a0a7)

---

### 🛠 Design Note  
This implementation is useful in designs where a slower counting frequency is derived from a faster clock using a gating enable. The `slowena` signal effectively throttles the counter, making it suitable for human-visible updates or timebase dividers.
