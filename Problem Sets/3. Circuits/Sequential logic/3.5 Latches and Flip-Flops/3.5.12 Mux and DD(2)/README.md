## Exams/2014_q4a – One Stage of a Controlled Shift Register

This module implements **one stage of a shift register** using **multiplexers** and a **D flip-flop**, where inputs allow control over loading, shifting, and holding values.

---

### 🧠 Concept Insight  
- **Load (`L`)**: Overrides everything, directly loads `R` into the flip-flop.
- **Enable (`E`)**: If high and not loading, the flip-flop captures data `w` (i.e., shifts).
- If both `L` and `E` are low, the flip-flop retains its current value (`Q`).

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock  
  - `w`: Serial data input  
  - `R`: Load value  
  - `E`: Enable for shift  
  - `L`: Load signal (priority)  
- **Output**:  
  - `Q`: Flip-flop output

<img width="672" alt="{FB5E4D04-6378-425B-A75B-81E466C7216B}" src="https://github.com/user-attachments/assets/c5117602-8348-4796-88e5-4f57fe3059dd" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/2014_q4a)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.5%20Latches%20and%20Flip-Flops/3.5.12%20Mux%20and%20DD(2)/2014_q4a.v)

---

### 🛠 Design Note  
This configuration is useful in **serial-in/parallel-out (SIPO)** or **controlled data transfer pipelines** where explicit control over shift and load operations is needed.
