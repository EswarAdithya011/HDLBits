## Exams/ece241_2014_q3 – Logic Implementation with 4-to-1 MUX and 2-to-1 MUXes

This module constructs the 4-to-1 multiplexer’s input logic `mux_in[3:0]` based on the simplified **Karnaugh Map** function. Inputs `a` and `b` are assumed to be used as select lines for the 4-to-1 multiplexer, while `c` and `d` help generate the data inputs through minimal use of 2-to-1 multiplexers.

---

### 🧠 Concept Insight  
Each `mux_in[i]` represents the function output when `a` and `b` equal `i`. Based on the K-map grouping, each expression is minimized using combinations of `c` and `d` only.  
This problem emphasizes **functional completeness using multiplexers only**.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `c`, `d`: Inputs for generating `mux_in`  
- **Outputs**:  
  - `mux_in[3:0]`: Inputs to a 4-to-1 MUX controlled externally by `a` and `b`  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q3)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.4%20karnaugh%20Map%20to%20circuit/K-map%20implemented%20with%20a%20multiplexer/ece241_2014_q3.v)

---

### 🛠 Design Note  
This implementation focuses on deriving **minimal expressions for MUX inputs** using `c` and `d`, aligned with Karnaugh map groupings. It's a classic case of **MUX-based logic synthesis** using just data selectors, ideal for FPGA LUT modeling.
