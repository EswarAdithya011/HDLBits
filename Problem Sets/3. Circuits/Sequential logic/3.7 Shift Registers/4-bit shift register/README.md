## shift4 → `rotate100` – 4-bit Shift Register with Reset, Load, and Enable

Design a **4-bit right shift register** with asynchronous reset, synchronous load, and shift-enable control.

---

### 🧠 Concept Insight

- **Shift Register Type**: Right-shift → bit `q[0]` is lost, `q[3]` becomes 0  
- **Reset Type**: Asynchronous reset to zero (high priority)  
- **Load**: On `load=1`, load `data[3:0]` synchronously into `q[3:0]`  
- **Enable**: On `ena=1`, shift bits right synchronously (`q[3]=0`)

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock input
  - `areset`: Asynchronous active-high reset
  - `load`: Synchronous load control
  - `ena`: Synchronous shift enable
  - `data[3:0]`: 4-bit input to be loaded

- **Output**:
  - `q[3:0]`: 4-bit shift register content

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Shift4)

---

### ✅ Solution
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.7%20Shift%20Registers/4-bit%20shift%20register/shift4.v)

---

### 🛠 Design Note

1. **Reset**:
   - Asynchronous reset has highest priority. When `areset = 1`, output is cleared:
     ```verilog
     if (areset)
         q <= 4'b0000;
     ```

2. **Load vs. Shift**:
   - On positive edge of clock:
     - If `load = 1`: load `data[3:0]`
     - Else if `ena = 1`: perform shift → `q <= {1'b0, q[3:1]}`

3. **Priority Order**:
   - Asynchronous Reset > Load > Enable

---

### 🔄 Example Operation

| clk ↑ | areset | load | ena | data | q_before | q_after |
|-------|--------|------|-----|------|----------|---------|
| 1     | 1      | X    | X   | XXXX | XXXX     | 0000    |
| 0     | 0      | 1    | 0   | 1011 | XXXX     | 1011    |
| 0     | 0      | 0    | 1   | XXXX | 1011     | 0101    |
| 0     | 0      | 0    | 1   | XXXX | 0101     | 0010    |
| 0     | 0      | 0    | 0   | XXXX | 0010     | 0010    |

---

This implementation follows practical FPGA-based sequential design by prioritizing asynchronous reset, handling synchronous load and shift operations precisely, and supporting bit-level control of registers.
