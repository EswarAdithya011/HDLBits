## rotate100 → `shift18` – 100-bit Left/Right Bitwise Rotator with Load

Design a **100-bit rotator** with support for:
- **Synchronous load**
- **Bidirectional rotate** (left and right)
- **No-op mode** (no rotation)

---

### 🧠 Concept Insight

- **Rotator ≠ Shifter**:
  - **Shifter** discards bits (shift in 0).
  - **Rotator** wraps bits (no data loss).

- **Control Signal**:
  - `load = 1`: load `data[99:0]`
  - `ena = 2'b01`: rotate **right**
  - `ena = 2'b10`: rotate **left**
  - `ena = 2'b00` or `2'b11`: do **nothing**

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock
  - `load`: Synchronous load enable
  - `ena[1:0]`: Control for rotation:
    - `2'b01` = right rotate
    - `2'b10` = left rotate
    - others = no rotate
  - `data[99:0]`: Data to load when `load = 1`

- **Output**:
  - `q[99:0]`: Rotator output

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Rotate100)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.7%20Shift%20Registers/left-right%20rotator/rotate100.v)

---

### 🛠 Design Note

- Use Verilog `always @(posedge clk)` block for synchronous logic.
- Use conditional logic:
  - If `load = 1`: assign `q <= data`
  - Else if `ena == 2'b01`: right rotate `q <= {q[0], q[99:1]}`
  - Else if `ena == 2'b10`: left rotate `q <= {q[98:0], q[99]}`
  - Else: retain `q`

---

### 🔄 Rotation Example

Let `q = 8'b1001_0110` (for small example), then:
- **Right rotate**: `q <= {q[0], q[7:1]} = 8'b0100_1011`
- **Left rotate**: `q <= {q[6:0], q[7]} = 8'b0010_1101`

---

### ✅ Final Remarks

- Ideal for circular buffers, serial rotation, and low-level bit manipulation.
- Always ensure priority of `load` over `rotate`.

This rotator maintains bit integrity by design, and avoids combinational glitches using sequential logic for precise behavior on FPGAs.
