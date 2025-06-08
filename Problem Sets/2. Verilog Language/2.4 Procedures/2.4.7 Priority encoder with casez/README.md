## Always CaseZ – 8-bit Priority Encoder Using `casez`

This problem requires implementing a **priority encoder** using the `casez` statement, which allows **don't-care conditions** to reduce verbosity and ensure clean encoding.

---

### 🧠 Concept Insight  
- A **priority encoder** reports the **lowest index** of a high bit in an input vector.
- `casez` allows using `z` or `?` as **wildcard bits**, simplifying logic.
- Each `casez` pattern should **match exactly one condition** to avoid ambiguity.
- This technique significantly reduces the **number of cases** compared to standard `case`.

---

### 📘 Problem Statement  
Build an 8-bit priority encoder with:

- **Input**:
  - `in[7:0]`: 8-bit input vector.
- **Output**:
  - `pos[2:0]`: Encoded position of the **first ‘1’** (starting from LSB to MSB).
  - If no bits are high, output `3'b000`.

Examples:
- `in = 8'b00000001` → `pos = 3'd0`
- `in = 8'b00000110` → `pos = 3'd1`
- `in = 8'b01000000` → `pos = 3'd6`
- `in = 8'b00000000` → `pos = 3'd0`

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Always_casez)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.4%20Procedures/2.4.7%20Priority%20encoder%20with%20casez/always_casez.v)

<img width="548" alt="{A62503AF-EF17-43EC-8E99-845383F3A54D}" src="https://github.com/user-attachments/assets/9dfce66e-0f59-4805-ace4-fde67fc2a17a" />

---

### 🛠 Design Note  
Using `casez` with **pattern matching from LSB** ensures the **first active bit** is captured. Ensure the cases are ordered from lowest to highest bit to maintain **correct priority**. Always include a **default case** to avoid latch inference.
