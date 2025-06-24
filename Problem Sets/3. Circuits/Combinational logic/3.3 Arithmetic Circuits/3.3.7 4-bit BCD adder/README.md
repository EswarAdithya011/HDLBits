## Bcdadd4 – 4-Digit BCD Ripple-Carry Adder

This module creates a **4-digit BCD (Binary-Coded Decimal) ripple-carry adder** by instantiating 4 copies of a provided one-digit `bcd_fadd` module.

---

### 🧠 Concept Insight  
A BCD digit is 4 bits wide and represents decimal values 0–9. Unlike binary adders, BCD addition must handle decimal carry and result correction for values ≥10.

In this problem:
- Each 4-bit segment represents one decimal digit.
- A 4-digit BCD number is 16 bits: `a[15:0]` and `b[15:0]`
- Ripple-carry means carry-out from one digit is carry-in to the next.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a[15:0]`, `b[15:0]`: Two 4-digit BCD numbers (each digit is 4 bits)  
  - `cin`: Carry-in  
- **Outputs**:  
  - `sum[15:0]`: 4-digit BCD sum  
  - `cout`: Final carry-out  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Bcdadd4)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.2%20Combinational%20Logic/Bcdadd4.v)

<img width="462" alt="{731792FD-92FD-4641-BD45-1F89610AA5E5}" src="https://github.com/user-attachments/assets/e06fd275-025e-46ba-aa2a-124425c5fe69" />

---

### 🛠 Design Note  
This exercise reflects **hierarchical design in RTL**, showing how larger arithmetic units are built from digit-level modules. It's essential for BCD arithmetic, which is used in financial and human-readable systems.
