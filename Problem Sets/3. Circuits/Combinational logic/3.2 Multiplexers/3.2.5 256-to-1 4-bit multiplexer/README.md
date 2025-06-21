## Mux256to1v – 256-to-1 Multiplexer (4-bit Output)

This module implements a **4-bit wide 256-to-1 multiplexer**. The 256 4-bit inputs are packed into a single `1024-bit` input vector. An 8-bit `sel` input chooses one of these 4-bit chunks to drive the 4-bit output.

---

### 🧠 Concept Insight  
Verilog-2001 introduced **indexed vector part-select**, which allows clean access to a block of bits like this:  
`in[sel*4 +: 4]`  
This selects a **4-bit slice** starting from `sel*4`. It's compact and fully synthesizable, making it ideal for wide multiplexers.

---

### 📘 Problem Statement  
- **Input**:  
  - `in[1023:0]`: Packed 256 × 4-bit input vector  
  - `sel[7:0]`: 8-bit selection line (values 0–255)  
- **Output**:  
  - `out[3:0]`: The selected 4-bit chunk from `in`  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mux256to1v)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.2%20Multiplexers/3.2.5%20256-to-1%204-bit%20multiplexer/mux256to1v.v)

---

### 🛠 Design Note  
This problem reinforces your understanding of **indexed vector slicing**, a powerful tool in Verilog that simplifies accessing and manipulating grouped data within a wide bus.
