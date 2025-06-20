## Mux2to1v – 2-to-1 Multiplexer (100-bit Vector)

This task extends the classic 2:1 multiplexer to work on **100-bit wide input vectors**, selecting between two 100-bit inputs using a single selector bit.

---

### 🧠 Concept Insight  
A **vector multiplexer** applies the same selection logic to every bit in the vector.  
- If `sel = 0` → output all bits from `a`  
- If `sel = 1` → output all bits from `b`  

Implemented using a vectorized ternary operator:  
`assign out = sel ? b : a;`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a[99:0]` – 100-bit input vector A  
  - `b[99:0]` – 100-bit input vector B  
  - `sel` – selection line  
- **Output**:  
  - `out[99:0]` – selected output vector  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mux2to1v)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.2%20Combinational%20Logic/Mux2to1v.v)

<img width="771" alt="{95ADD906-1155-4A61-B9FB-4A5943A7A863}" src="https://github.com/user-attachments/assets/bdf86b92-66f6-4f5e-a5d9-a8811f182f64" />

---

### 🛠 Design Note  
Vector multiplexers are essential in **datapath designs**, especially for selecting entire buses, registers, or memory lines. This exercise builds intuition for handling wide data operations efficiently in RTL.
