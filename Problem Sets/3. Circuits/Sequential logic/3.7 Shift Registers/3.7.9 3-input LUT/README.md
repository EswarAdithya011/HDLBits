## exams/ece241_2013_q12 → `8-bit LUT using Shift Register and Multiplexer`

Design a **3-input Look-Up Table (LUT)** using a **serial-in parallel-access 8-bit memory** composed of a shift register and a multiplexer.

This LUT behaves like a small RAM where bits are written serially and read randomly via a multiplexer controlled by 3 address bits.

---

### 🧠 Concept Insight

- A LUT (Look-Up Table) with 3 inputs (A, B, C) can store any 3-input Boolean function by preloading 8 bits into memory.
- This LUT is **programmed by shifting in** the 8 bits (MSB first), and
- **Read via a multiplexer** addressed by `A`, `B`, `C`.

Architecture:

- **Shift Register**:
  - 8-bit serial-in shift register using **D flip-flops**
  - On each `clk` and `enable`, a new bit enters at `S`, shifting right
  - Flip-flop outputs are `Q[7:0]` (MSB to LSB)

- **Read Logic**:
  - `A`, `B`, `C` form a 3-bit address
  - A **8-to-1 multiplexer** selects `Q[addr]` as output `Z`

This is equivalent to a 3-input LUT initialized via shift.

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock input for flip-flops
  - `enable`: Shift enable signal
  - `S`: Serial data input (bit to be shifted in)
  - `A, B, C`: 3-bit address inputs

- **Output**:
  - `Z`: Output bit corresponding to `Q[{A,B,C}]`

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2013_q12)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/7.%20Sequential%20Logic/ece241_2013_q12.v)

<img width="500" height="612" alt="image" src="https://github.com/user-attachments/assets/68b5f94c-c077-4cb6-9dec-843784f10981" />

---

### 🛠 Design Note

- The register uses `always @(posedge clk)` and loads `S` into `Q[0]`, shifts existing bits to the next higher index.
- A **combinational `case` statement** or **8-input multiplexer** is used to decode `A,B,C` into a `Z` value based on stored bits.
- This LUT structure is very similar to how **FPGA logic elements** operate internally.
