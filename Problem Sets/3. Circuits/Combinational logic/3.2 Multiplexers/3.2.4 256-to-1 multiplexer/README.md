## Mux256to1 – 256-to-1 Multiplexer (1-bit Output)

This module implements a **1-bit wide 256-to-1 multiplexer**. All 256 input lines are packed into a single `256-bit` input vector. The multiplexer uses an 8-bit selector `sel` to choose a single bit from this vector.

---

### 🧠 Concept Insight  
Using vector indexing in Verilog, a single bit can be directly accessed with a variable index like `in[sel]`. This eliminates the need for case or if-else constructs and keeps the design simple and synthesizable.

---

### 📘 Problem Statement  
- **Input**:  
  - `in[255:0]`: 256-bit vector input  
  - `sel[7:0]`: Selector input to choose one of the 256 bits  
- **Output**:  
  - `out`: The bit selected from the `in` vector based on `sel`  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mux256to1)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.2%20Multiplexers/3.2.4%20256-to-1%20multiplexer/mux256to1.v)

---

### 🛠 Design Note  
This exercise highlights the **power of vector indexing** in Verilog for scalable multiplexer design. It's efficient and preferred over case statements when dealing with large vectorized inputs.
