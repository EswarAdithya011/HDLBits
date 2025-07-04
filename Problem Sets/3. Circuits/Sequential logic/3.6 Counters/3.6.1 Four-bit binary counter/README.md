## Count15 – 4-Bit Synchronous Counter (Modulo-16)

This module implements a **4-bit synchronous binary counter** that wraps around from 15 to 0, cycling every 16 clock pulses. It includes an active-high synchronous reset which forces the counter to 0 when asserted.

---

### 🧠 Concept Insight  
- Counter width: 4 bits (can count 0 to 15)
- Reset is **synchronous**: acts only on positive clock edges
- Each rising edge of `clk` increments `q` by 1
- If `reset == 1`, `q` resets to 0 on the next rising edge

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock input  
  - `reset`: Synchronous active-high reset  
- **Output**:  
  - `q[3:0]`: 4-bit counter output (0 → 15 cycling)  

<img width="493" alt="{31727247-FFFE-4C83-850C-ECDB6DA51FB7}" src="https://github.com/user-attachments/assets/d31e689b-5eeb-484f-b17c-a024fc8ed930" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Count15)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.6%20Counters/3.6.1%20Four-bit%20binary%20counter/count15.v)

<img width="483" alt="{FC450100-173D-46A3-A6C4-F38CB714E4B5}" src="https://github.com/user-attachments/assets/9dc4ce5c-0054-4603-9be8-baed311cc3b3" />

---

### 🛠 Design Note  
This is a standard example of a synchronous counter useful in digital timers, finite state machines, and control logic. The wrap-around behavior from 15→0 is natural due to binary overflow in 4-bit logic.
