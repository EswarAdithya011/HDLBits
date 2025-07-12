## lfsr32 → `Lfsr32` – 32-bit Galois LFSR with Taps at Bit 32, 22, 2, and 1

Design a **32-bit Galois Linear Feedback Shift Register (LFSR)** with the following characteristics:
- **Galois LFSR architecture** using selective tap feedback injection
- **Taps at bit positions**: 32, 22, 2, and 1
- **Maximal-length** register that cycles through all 2³²−1 states (except the all-zero state)
- **Synchronous reset** to state `32'h00000001`

---

### 🧠 Concept Insight

- A **Galois LFSR** injects the **feedback bit** (LSB of current state) into specified tap positions using XOR.
- Positions with taps modify their input using:  
  `next_bit = current_bit ^ feedback_bit`
- Non-tapped positions are directly shifted from the bit to their right.
- Bit positions are indexed from `q[31]` (MSB, position 32) to `q[0]` (LSB, position 1).

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock
  - `reset`: Synchronous active-high reset

- **Output**:
  - `[31:0] q`: 32-bit register value (LFSR state)

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Lfsr32)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.7%20Shift%20Registers/3.7.6%2032-bit%20LFSR/lfsr32.v)

---

### 🛠 Design Note

- Feedback is generated from `q[0]` (LSB).
- The following bits are tapped:
  - **Bit 0 feedback XORs into**:
    - `q[1]` → bit position 2
    - `q[21]` → bit position 22
    - `q[31]` → bit position 32
- All other bits shift normally.
