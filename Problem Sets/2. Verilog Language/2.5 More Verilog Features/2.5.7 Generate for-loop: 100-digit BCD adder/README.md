## Bcdadd100 – 100-Digit BCD Ripple-Carry Adder

This problem involves building a **100-digit BCD (Binary Coded Decimal) ripple-carry adder** by instantiating 100 copies of a provided BCD full adder module. Each BCD digit is 4 bits, so the total input width is 400 bits (100 × 4).

---

### 🧠 Concept Insight  
- A **BCD digit** represents values 0–9 using 4 bits.
- A **BCD full adder** adds two BCD digits and a carry-in, producing:
  - A 4-bit sum (BCD result)
  - A carry-out for the next digit
- **Ripple-carry architecture**: carry-out from one digit feeds the next.

---

### 📘 Problem Statement  
Design a BCD adder as follows:

- **Inputs**:
  - `a[399:0]`, `b[399:0]`: Packed 100-digit BCD numbers
  - `cin`: Carry-in for the LSB digit
- **Outputs**:
  - `sum[399:0]`: 100-digit BCD sum
  - `cout`: Final carry-out from the MSB digit

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Bcdadd100)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.5%20More%20Verilog%20Features/2.5.7%20Generate%20for-loop%3A%20100-digit%20BCD%20adder/bcdadd100.v)

---

### 🛠 Design Note  
This problem is an excellent example of **structural design** using **generate loops** for repetitive module instantiation. Each loop iteration connects the corresponding 4-bit BCD digit from inputs `a` and `b`, along with the carry chain. Ensure correct **bit slicing** like `a[4*i+3:4*i]` to select each BCD digit.
