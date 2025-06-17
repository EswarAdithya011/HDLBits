## Truthtable1 – Combinational Logic from Truth Table

This exercise builds a combinational circuit directly from a given truth table using sum-of-products logic.

---

### 🧠 Concept Insight  
For a 3-input boolean function, there are 2³ = 8 possible input combinations.  
To construct the logic for the output `f`, identify rows where the output is `1` and generate AND gates for each of those rows.  
Then, OR all those AND outputs together (sum of products).

Given rows with `f = 1`:  
- Row 2: `x3=0`, `x2=1`, `x1=0` → `~x3 & x2 & ~x1`  
- Row 3: `x3=0`, `x2=1`, `x1=1` → `~x3 & x2 & x1`  
- Row 5: `x3=1`, `x2=0`, `x1=1` → `x3 & ~x2 & x1`  
- Row 7: `x3=1`, `x2=1`, `x1=1` → `x3 & x2 & x1`  

---

### 📘 Problem Statement  
- **Inputs**: `x3`, `x2`, `x1`  
- **Output**: `f`  
- **Goal**: Implement the logic function defined by the provided truth table.

<img width="442" alt="{FB836975-06BB-441E-9400-A0C3318260E4}" src="https://github.com/user-attachments/assets/82096a57-63a4-4253-8984-44a3cc019e59" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Truthtable1)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.1%20Gates/Truthtable1.v)

---

### 🛠 Design Note  
This approach mirrors the fundamental method of translating a truth table into logic circuitry using canonical SOP (Sum-of-Products) form — ideal for synthesis and understanding digital logic fundamentals.
