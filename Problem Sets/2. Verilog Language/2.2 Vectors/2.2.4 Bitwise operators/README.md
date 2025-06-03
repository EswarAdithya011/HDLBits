## Vectorgates – Bitwise & Logical Operations on Vectors

This exercise focuses on understanding the difference between **bitwise** and **logical** operators when used on vector signals in Verilog. You will also practice using vector indexing and part-select techniques to construct composite outputs.

---

### 🧠 Concept Insight  
- **Bitwise OR (`|`)**: Operates on each corresponding bit of two vectors and produces a vector of the same width.  
  Example: `3'b101 | 3'b011 = 3'b111`
- **Logical OR (`||`)**: Evaluates whether either vector is non-zero and returns a **single bit** (1 or 0).  
  Example: `3'b000 || 3'b011 = 1'b1`
- **Bitwise NOT (`~`)**: Inverts each bit individually.  
  Example: `~3'b101 = 3'b010`
- **Part-select**: Assign specific ranges of bits within a vector.  
  Example: `out_not[2:0] = ~a; out_not[5:3] = ~b;`

---

### 📘 Problem Statement  
Build a module with:

- Two **3-bit input vectors**: `a` and `b`  
- A **3-bit output vector** `out_or_bitwise` which performs a **bitwise OR** between `a` and `b`  
- A **1-bit output** `out_or_logical` which performs a **logical OR** between `a` and `b`  
- A **6-bit output vector** `out_not`:  
  - Bits `[5:3]` = bitwise NOT of `b`  
  - Bits `[2:0]` = bitwise NOT of `a`  

<img width="692" alt="{2CED623A-D99E-4B20-BDA8-2C7B6D4B7DD7}" src="https://github.com/user-attachments/assets/ea217579-0850-405b-bf8c-057e649b1ef6" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vectorgates)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.7%20Vectorgates/Vectorgates.v)

<img width="616" alt="{0B2ADEAC-6AFD-4A16-8C5B-AC4C15866F88}" src="https://github.com/user-attachments/assets/25686da4-dae2-42d6-8e1b-94dbf1989c66" />

---

### 🛠 Design Note  
This task helps build clarity on vector-based boolean operations in Verilog. Differentiating between logical and bitwise operators is crucial to avoiding simulation mismatches and synthesis issues. Using part-select boosts modular design and clarity.
