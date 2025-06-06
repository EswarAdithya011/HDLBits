## Module_FAdd – Hierarchical 32-bit Adder with Custom 1-bit Full Adders

This exercise builds a **two-level hierarchical design**:  
- A 32-bit adder using **two 16-bit adders** (`add16`),  
- Each `add16` internally uses **sixteen 1-bit full adders** (`add1`), which you must implement.

---

### 🧠 Concept Insight  
- **`add1`** is a **1-bit full adder**: it computes `sum = a ⊕ b ⊕ cin` and `cout = majority(a, b, cin)`.
- **`add16`**, provided in HDLBits, chains 16 `add1` modules to compute a 16-bit addition with carry propagation.
- **`top_module`** connects two `add16` modules to form a **32-bit ripple-carry adder**:
  - The **first** adder computes `sum[15:0]` with `cin = 0`.
  - The **second** adder takes the carry-out from the first and computes `sum[31:16]`.

---

### 📘 Problem Statement  
Build a 32-bit hierarchical adder that includes:

- A **top module** `top_module` with inputs `a[31:0]`, `b[31:0]` and output `sum[31:0]`
- Two instantiations of `add16`
- A self-defined module `add1` implementing a 1-bit full adder
- Internal carry chaining between modules

<img width="450" alt="{625A5D64-0CB4-4BF4-949D-F81DEFB0D224}" src="https://github.com/user-attachments/assets/434dfe3a-54cf-457d-b52d-44098e9c30a6" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module_fadd)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Modules%3A%20Hierarchy/2.3.7%20Adder%202/module_fadd.v)

<img width="504" alt="{420CBDDA-8264-4A96-B538-9F10282994B0}" src="https://github.com/user-attachments/assets/001e57f4-5b95-42d1-a736-b8805d5b3063" />

---

### 🛠 Design Note  
This problem reflects real-world **hierarchical hardware design**. Implementing a **custom 1-bit adder** and composing it into **higher-bit adders** is fundamental in processor arithmetic units and ALU construction.
