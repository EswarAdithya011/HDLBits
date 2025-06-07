## AlwaysBlock1 – AND Gate Using `assign` and `always @(*)`

This problem introduces the use of **combinational always blocks** as an alternative to `assign` statements for creating combinational logic.

---

### 🧠 Concept Insight  
- **assign** statements continuously drive wire signals using Boolean expressions.
- **Combinational always blocks** (`always @(*)`) allow conditional and multi-line logic using `if`, `case`, etc.
- Syntax difference:
  - `assign` needs `wire` data type.
  - `always` needs `reg` type for outputs.
- Functionally, both approaches result in the same hardware but provide different styles of describing the same logic.

---

### 📘 Problem Statement  
Build a module with:

- Inputs: `a`, `b`
- Outputs:
  - `out_assign`: using an `assign` statement
  - `out_always`: using `always @(*)`

This simulates a basic 2-input **AND gate** using both styles.

<img width="500" alt="{45D5004B-607B-4D76-B6A1-A0BC35FCB6CA}" src="https://github.com/user-attachments/assets/475c40da-9377-4657-bbd8-f81dd75b5aa2" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Alwaysblock1)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.4%20Procedures/2.4.1%20Always%20blocks%20(combinational)/alwaysblock1.v)

<img width="500" alt="{801E0EA4-85B6-40CE-96D7-DB98DED34B63}" src="https://github.com/user-attachments/assets/bfaa5c09-3702-4d05-9059-746fda621661" />

---

### 🛠 Design Note  
Mastering both `assign` and `always` blocks is essential in RTL design. While `assign` is compact and efficient for simple combinational logic, `always` blocks offer better control for conditional and sequential logic.
