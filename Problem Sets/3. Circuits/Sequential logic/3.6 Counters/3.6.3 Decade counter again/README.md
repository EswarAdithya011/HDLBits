## Count1to10 – Decade Counter (1 to 10)

This module implements a **4-bit synchronous decade counter** that cycles through **1 to 10** (inclusive). After reaching 10, the counter wraps back to 1. The counter includes an active-high synchronous reset that also resets it to 1.

---

### 🧠 Concept Insight  
- Unlike a standard binary counter that starts from 0, this one starts and resets to **1**
- Once it reaches **10**, it rolls back to 1 manually
- The `reset` and `q == 10` conditions are merged using logical OR

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock input  
  - `reset`: Synchronous reset input  
- **Output**:  
  - `q[3:0]`: 4-bit counter output cycling from 1 to 10  

<img width="458" alt="{742C0E38-D508-4DE7-8616-26C013F9C37B}" src="https://github.com/user-attachments/assets/64227ba0-d6e1-44c5-8ba4-db9258b5f15a" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Count1to10)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.6%20Counters/3.6.3%20Decade%20counter%20again/count1to10.v)

<img width="651" alt="{C19ACA77-FDF6-4998-9F3B-3B8617B76225}" src="https://github.com/user-attachments/assets/1c414c83-b027-44e4-9dda-9ca19637637f" />

---

### 🛠 Design Note  
This counter avoids using modulus operations and directly uses comparison for wrapping. It's ideal for decoders or BCD systems where the count range is explicitly bounded between 1 and 10.
