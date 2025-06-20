## Gatesv100 – 100-Bit Neighbour Comparison Logic

This task extends the earlier concept (Gatesv) to a 100-bit vector, requiring efficient vector-based logic operations for analyzing relationships between adjacent bits.

---

### 🧠 Concept Insight  
This problem applies **bitwise logical operations** across a 100-bit input vector to produce:

- Logical ANDs between adjacent left bits  
- Logical ORs between adjacent right bits  
- XORs to detect differences, with circular wrapping

Efficient hardware design prefers **vector operations** for scalability and clarity.

---

### 📘 Problem Statement  
- **Input**: `in[99:0]` – 100-bit vector  
- **Outputs**:  
  - `out_both[98:0]`: 1 if both `in[i]` and `in[i+1]` are 1  
  - `out_any[99:1]`: 1 if either `in[i]` or `in[i−1]` is 1  
  - `out_different[99:0]`: 1 if `in[i] ≠ in[(i+1)%100]`

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Gatesv100)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.17%20Even%20longer%20vectors/gatesv100.v)

---

### 🛠 Design Note  
This problem reinforces the use of **vector slicing** and **wrapping logic**. Efficiently computing adjacency logic at scale is key in **error detection**, **data scrambling**, and **rotating shift designs**.
