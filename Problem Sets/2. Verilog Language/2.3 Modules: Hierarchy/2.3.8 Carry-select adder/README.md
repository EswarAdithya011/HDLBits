## Module_CSelAdd – 32-bit Carry Select Adder

This problem focuses on building a **faster 32-bit adder** using the **Carry Select Adder** technique to reduce delay caused by ripple carry propagation.

---

### 🧠 Concept Insight  
- A **Carry Select Adder (CSA)** improves performance by calculating both possible outcomes of a carry-in (`0` and `1`) *in parallel*, then selects the correct result using a **2-to-1 multiplexer**.
- The design includes:
  - **One `add16`** for the lower 16 bits (with `cin = 0`)
  - **Two `add16`s** for the upper 16 bits (one with `cin = 0`, one with `cin = 1`)
  - A **16-bit multiplexer** selects the correct upper sum and carry-out based on the lower adder’s carry-out.

---

### 📘 Problem Statement  
Build a **32-bit Carry Select Adder** using:

- 3 instantiations of `add16` (provided by HDLBits)
- Your own **16-bit 2:1 multiplexer**
- Inputs: `a[31:0]`, `b[31:0]`
- Output: `sum[31:0]`

<img width="500" alt="{5E4E6606-F3A0-4EB4-9ACA-22F05A9733FE}" src="https://github.com/user-attachments/assets/14509284-44d0-450b-89b8-732cc7e58fda" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module_cseladd)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Modules%3A%20Hierarchy/2.3.8%20Carry-select%20adder/module_cseladd.v)

---

### 🛠 Design Note  
This problem demonstrates how **parallelism** in hardware (pre-computing results for both possible carries) al
