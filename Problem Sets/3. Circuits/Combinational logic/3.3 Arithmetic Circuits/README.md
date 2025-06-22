## Mux256to1v – 256-to-1 Multiplexer (4-bit Output)

This module implements a **4-bit wide 256-to-1 multiplexer**, where each input group is 4 bits wide and all 256 groups are packed into a single `1024-bit` vector. The `sel` signal selects which 4-bit group to output.

---

### 🧠 Concept Insight  
To extract a fixed-width group based on a variable index, Verilog-2001 provides **indexed part-select** using the syntax:  
`in[sel * 4 +: 4]`  
This selects 4 consecutive bits starting from the computed base address `sel * 4`.

This is particularly useful and synthesizable in wide multiplexers where case statements are inefficient or infeasible.

---

### 📘 Problem Statement  
- **Input**:  
  - `in[1023:0]`: Packed input vector containing 256 × 4-bit chunks  
  - `sel[7:0]`: 8-bit selector to choose one 4-bit chunk  
- **Output**:  
  - `out[3:0]`: The selected 4-bit segment  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mux256to1v)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.3%20Arithmetic%20Circuits/mux256to1v.v)

---

### 🛠 Design Note  
This exercise demonstrates how powerful **indexed vector slicing** can be when managing large, structured data in hardware design. It's a clean and efficient way to implement scalable multiplexers without introducing logic clutter or complexity.
