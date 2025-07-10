## shift18 → `lfsr5` – 64-bit Arithmetic Shift Register with Load and Variable Shift

Design a **64-bit arithmetic shift register** supporting:
- **Synchronous load**
- **Variable directional shift** (left/right)
- **Variable shift amount** (1 or 8 bits)
- **Arithmetic behavior** (sign-extension during right shift)

---

### 🧠 Concept Insight

- **Arithmetic Right Shift (ASR)**: Fills vacant MSBs with sign bit (q[63]) to preserve signedness.
- **Logical Right Shift (LSR)**: Fills vacant MSBs with `0`.

Use Verilog `always @(posedge clk)` for synchronous operations.

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock
  - `load`: Load `data` to `q`
  - `ena`: Enable shifting
  - `amount[1:0]`:
    - `2'b00`: shift left  by 1
    - `2'b01`: shift left  by 8
    - `2'b10`: shift right by 1 (arithmetic)
    - `2'b11`: shift right by 8 (arithmetic)
  - `data[63:0]`: Data to be loaded

- **Output**:
  - `q[63:0]`: Current content of the shift register

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Shift18)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/7.%20Sequential%20Logic/Shift18.v)

<img width="556" height="482" alt="image" src="https://github.com/user-attachments/assets/0f253745-9770-4bb9-965c-c47d2e82138f" />

<img width="700" height="481" alt="image" src="https://github.com/user-attachments/assets/9626ff16-7412-413b-995a-edd467481135" />

---

### 🛠 Design Note

- **Load priority**: If `load == 1`, ignore shift signals and load `q <= data`
- **Shift cases**:
  - `2'b00`: `q <= q << 1`
  - `2'b01`: `q <= q << 8`
  - `2'b10`: `q <= {q[63], q[63:1]}`  (ASR by 1)
  - `2'b11`: `q <= {{8{q[63]}}, q[63:8]}` (ASR by 8)

Use:
```verilog
    case (amount)
        2'b00: q <= q << 1;
        2'b01: q <= q << 8;
        2'b10: q <= {q[63], q[63:1]};
        2'b11: q <= {{8{q[63]}}, q[63:8]};
    endcase
