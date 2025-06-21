## Mux9to1v – 9-to-1 Multiplexer (16-bit Vector)

This module implements a **16-bit wide 9-to-1 multiplexer**, controlled by a 4-bit `sel` signal. The multiplexer selects one of the 9 input vectors `a` through `i`. For `sel` values 9 through 15 (which are not used), the output defaults to all 1s.

---

### 🧠 Concept Insight  
A case statement is ideal for handling multiple input selections based on a 4-bit selector.  
Each case from 0 to 8 routes the corresponding input vector to the output.  
Remaining selector values (9–15) are handled by default, ensuring no latch inference.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a` to `i`: Nine 16-bit input vectors  
  - `sel`: 4-bit selection input  
- **Output**:  
  - `out[15:0]`: Output vector selected from one of the inputs or set to 16'hFFFF for unused selectors  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mux9to1v)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.2%20Combinational%20Logic/Mux9to1v.v)

<img width="459" alt="{E6CC2807-5D37-4D28-93AE-800F1A0875F0}" src="https://github.com/user-attachments/assets/40a91c1d-4dab-4bb9-9291-44b1c5f2f977" />

---

### 🛠 Design Note  
This exercise emphasizes proper **combinational design** using case statements, which are scalable and clean for large multiplexers. It also reinforces default-case handling to avoid **unintentional latch inference**.
