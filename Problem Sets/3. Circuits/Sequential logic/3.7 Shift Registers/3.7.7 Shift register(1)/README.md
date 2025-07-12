## shift4 → `Synchronous 4-bit Serial-In Parallel-Out Shift Register`

Design a **4-bit serial-in parallel-out (SIPO) shift register** using the following logic:

- The register loads 1 bit of data (`in`) into the MSB on each rising edge of the clock.
- Data moves right (towards LSB) on each clock cycle.
- The register resets synchronously to `4'b0000` when `resetn` is deasserted (`0`).
- Output `out` corresponds to the complete 4-bit register state.

---

### 🧠 Concept Insight

- A **SIPO shift register** accumulates serial input data over multiple clock cycles.
- The most recent bit appears in the MSB (`shift_reg[3]`).
- Data previously in the MSB moves down one bit position on each clock.
- Useful in serial communication protocols or deserializers.

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock signal
  - `resetn`: Active-low **synchronous** reset
  - `in`: Serial data input

- **Output**:
  - `out`: 4-bit parallel output from the register

<img width="600" height="284" alt="image" src="https://github.com/user-attachments/assets/71f112f9-873a-4ecb-ae45-dde394f7436d" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4e)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.7%20Shift%20Registers/3.7.7%20Shift%20register(1)/m2014_q4k.v)

---

### 🛠 Design Note

- The shift operation is implemented using Verilog’s concatenation operator:  
  `{in, shift_reg[3:1]}`  
  This effectively pushes `in` into the MSB and shifts the remaining bits right.
- The output `out` is assigned the full shift register state (`4'b`), and may be used for data inspection or debugging.

---

### ⛓ Example Timing

| Clock Cycle | `in` | `shift_reg`         | `out`            |
|-------------|------|---------------------|------------------|
| 0 (resetn=0)|  –   | 0000                | 0000             |
| 1           | 1    | 1000                | 1000             |
| 2           | 0    | 0100                | 0100             |
| 3           | 1    | 1010                | 1010             |
| 4           | 1    | 1101                | 1101             |

--- 
