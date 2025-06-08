## Always Case – 4-bit Priority Encoder Using `case` Statement

This problem is about implementing a **priority encoder**, where the output is the **position of the first high bit** in the input vector, scanning from **MSB to LSB**.

---

### 🧠 Concept Insight  
- A **priority encoder** selects the highest-priority input (highest index bit with value 1) and encodes its position.
- A **4-bit encoder** scans bits from in[3] to in[0].
- If none are high, the output should be `2'b00`.
- A **`case` statement with pattern matching** can implement this clearly.

---

### 📘 Problem Statement  
Design a 4-bit priority encoder with the following behavior:

- **Input**:
  - `in[3:0]`: 4-bit input vector.
- **Output**:
  - `pos[1:0]`: Encoded position of the first '1' from MSB to LSB.

Examples:
- `in = 4'b1000` → `pos = 2'b11`
- `in = 4'b0100` → `pos = 2'b10`
- `in = 4'b0010` → `pos = 2'b01`
- `in = 4'b0001` → `pos = 2'b00`
- `in = 4'b0000` → `pos = 2'b00` (default case)

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Priority_encoder)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Procedures/2.3.6%20Always_case/Priority_encoder.v)

<img width="658" alt="{BD475FE8-1D63-4422-A7B8-7F901722D53E}" src="https://github.com/user-attachments/assets/e6a900ef-4d03-4672-b7c5-20fcc0ac6800" />

---

### 🛠 Design Note  
Use **pattern matching with `casez`** or conditional `if` blocks to encode bit positions based on **priority logic**. Always ensure to handle **default zero case** to avoid incorrect output during all-zero input.
