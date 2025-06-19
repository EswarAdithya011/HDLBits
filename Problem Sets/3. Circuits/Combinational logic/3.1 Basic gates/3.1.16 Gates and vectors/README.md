## Gatesv – Bitwise Neighbour Relationship Logic

This task focuses on analyzing relationships between each bit of a 4-bit input vector and its adjacent bits using bitwise logic operations.

---

### 🧠 Concept Insight  
The circuit evaluates bitwise comparisons between neighboring bits in a 4-bit vector:

- `out_both[i] = in[i] & in[i+1]` → Both current and left neighbor are 1  
- `out_any[i]  = in[i] | in[i-1]` → Either current or right neighbor is 1  
- `out_different[i] = in[i] ^ in[(i+1)%4]` → Wrap-around XOR for difference detection

---

### 📘 Problem Statement  
- **Input**: `in[3:0]` – 4-bit vector  
- **Outputs**:  
  - `out_both[2:0]`: Each bit = `1` if in[i] and in[i+1] are both `1`  
  - `out_any[3:1]`: Each bit = `1` if in[i] or in[i−1] is `1`  
  - `out_different[3:0]`: Each bit = `1` if in[i] ≠ in[(i+1)%4]`

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Gatesv)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.2%20Combinational%20Logic/Gatesv.v)

<img width="450" alt="{05A27579-66BD-49C4-9D08-EAEBDE2B3A47}" src="https://github.com/user-attachments/assets/97fb8e02-e1b9-407a-bf0e-a882541e6a88" />

---

### 🛠 Design Note  
This exercise demonstrates how to handle adjacent-bit logic comparisons and circular wrapping behavior. It's a fundamental concept useful in **rotating buffers**, **edge detection**, and **bit pattern comparison**.
