## Kmap3 – Karnaugh Map Logic Simplification (4 Inputs)

This module implements a logic function optimized using a **4-variable Karnaugh map**. The function is expressed in minimized **Sum-of-Products (SOP)** form for efficient synthesis.

---

### 🧠 Concept Insight  
Using K-map grouping, the logic function can be minimized to:  
`out = a + ~b·c`

This logic means:
- The output is `1` when `a` is `1`, regardless of other inputs.
- Or when `b` is `0` and `c` is `1`.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a`, `b`, `c`, `d`: Boolean variables  
- **Output**:  
  - `out`: Logic output derived from the K-map simplification  

<img width="321" alt="{90A9B085-6AD7-40A1-BA1A-1684A0284B43}" src="https://github.com/user-attachments/assets/9aa0bd4d-c7fc-4015-b321-8304b30fc86e" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Kmap3)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.4%20karnaugh%20Map%20to%20circuit/4-variable%20(2)/kmap3.v)

<img width="577" alt="{CCB73D88-52D4-47AD-ABA0-A53D210C2453}" src="https://github.com/user-attachments/assets/764b1761-0a38-421d-a532-00af59bb8044" />

---

### 🛠 Design Note  
This task emphasizes **identifying dominant terms and redundant inputs** from truth tables/K-maps. Efficient expressions reduce gate count, improving both speed and power in digital circuit design.
