## Module_AddSub – 32-bit Adder-Subtractor Using Conditional Inversion

This problem demonstrates how to build a **combined adder-subtractor** circuit by conditionally inverting one operand and adjusting the carry-in.

---

### 🧠 Concept Insight  
- Subtraction `a - b` is equivalent to `a + (~b) + 1`.
- You can build an adder-subtractor by:
  - Inverting `b` using `b ^ {32{sub}}`
  - Passing `sub` as the carry-in
- This enables the module to perform both:
  - **Addition** when `sub = 0` → `a + b`
  - **Subtraction** when `sub = 1` → `a + (~b) + 1`

---

### 📘 Problem Statement  
Design a **32-bit adder-subtractor** using:

- 2 instances of `add16` (provided)
- XOR to conditionally invert operand `b`
- Input:
  - `a[31:0]`, `b[31:0]`, and `sub` (operation selector)
- Output:
  - `sum[31:0]` = `a + b` if `sub=0`; `a - b` if `sub=1`

<img width="500" alt="{FC9572A0-EAC3-4ECC-8047-47EF5A05CA49}" src="https://github.com/user-attachments/assets/3de416af-9181-4994-8415-ce5914e4aa51" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module_addsub)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.2%20Modules/2.2.9%20Module_AddSub/Module_addsub.v)

<img width="579" alt="{F6ECC51C-ECD3-431F-94AF-38D70EEC2DB9}" src="https://github.com/user-attachments/assets/3ae7b046-dda4-4453-99b8-7a24d268e36d" />

---

### 🛠 Design Note  
This exercise introduces **operand conditioning**, where logic gates like XOR are used to **selectively modify signals**. This is a common technique used in ALUs to reduce hardware duplication for add/subtract operations.
