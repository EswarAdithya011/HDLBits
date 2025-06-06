## Module_Add – 32-bit Ripple Carry Adder Using Two 16-bit Adders

This problem focuses on **hierarchical adder design** by combining two 16-bit adders to form a complete 32-bit adder.

---

### 🧠 Concept Insight  
- The provided module `add16` performs a 16-bit addition with carry-in and carry-out.
- To build a 32-bit adder:
  - Split the inputs `a[31:0]` and `b[31:0]` into lower and upper 16-bit segments.
  - Instantiate two `add16` modules:
    - The **first** computes the lower 16 bits using `cin = 0`.
    - The **second** uses the carry-out from the first as its carry-in to compute the upper 16 bits.
- Final carry-out is ignored; this is a pure 32-bit sum.

---

### 📘 Problem Statement  
Build a 32-bit adder with:

- Inputs:
  - `a[31:0]`
  - `b[31:0]`
- Output:
  - `sum[31:0]`
- Use **two instances** of the provided `add16` module to compute the result.

<img width="451" alt="{DCFAE549-4317-4859-AA4B-E021BD701A27}" src="https://github.com/user-attachments/assets/645a977b-8016-42b7-a2ae-7aba80d60be2" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module_add)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Modules%3A%20Hierarchy/2.3.6%20Adder%201/module_add.v)

<img width="463" alt="{6780CD5B-EE4E-422B-AF0C-1A711B29EE96}" src="https://github.com/user-attachments/assets/5f9a511f-935b-4d80-9774-03714dfb06b3" />

---

### 🛠 Design Note  
This is a classic example of **modular arithmetic circuit design**. Understanding **carry propagation** and **bitwise partitioning** is crucial when building scalable arithmetic blocks like adders, multipliers, and ALUs.
