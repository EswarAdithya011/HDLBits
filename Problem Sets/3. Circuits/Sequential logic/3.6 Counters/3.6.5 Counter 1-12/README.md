## Exams/ece241_2014_q7b – 1-to-12 Counter Using `count4`

This module implements a **1–12 synchronous counter** using the provided `count4` 4-bit binary counter. The design includes internal control signals `c_enable`, `c_load`, and `c_d` to drive the internal counter appropriately, and expose these control signals for correctness verification.

---

### 🧠 Concept Insight  
- The counter counts from **1 to 12**, wrapping back to 1.  
- `count4` is a 4-bit up counter with:
  - **synchronous load** (highest priority)
  - **enable** control  
- On reset: Load value = 1  
- When `Q == 12` and `enable == 1`: load value = 1  
- Otherwise, enable the counter

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `reset`: Active-high synchronous reset  
  - `enable`: Active-high enable to control counting  
- **Outputs**:  
  - `Q[3:0]`: Counter value (1 to 12)  
  - `c_enable`: Internal counter enable  
  - `c_load`: Internal counter load  
  - `c_d[3:0]`: Data to be loaded during a load event  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q7b)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/6.%20Final%20Exam/Exams-ece241_2014_q7b.v)

![Uploading image.png…]()

---

### 🛠 Design Note  
This counter design demonstrates the technique of **wrapping custom ranges** (1–12) using internal load and enable signals, managed by conditions. The interface through `c_load`, `c_enable`, and `c_d` ensures full transparency and testability of the design logic.
