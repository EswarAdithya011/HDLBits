## mt2015_lfsr → 3-bit Linear Feedback Shift Register with MUX + DFF Blocks

This circuit models a **3-bit Linear Feedback Shift Register (LFSR)** using hierarchical design.  
The design was taken from the **2015 Midterm Question 5**, where submodules contain one **D flip-flop + 2:1 multiplexer**.

---

### 🎯 Objective

Build the LFSR using 3 blocks (each containing a D flip-flop and a multiplexer) with the following:

- **Inputs**:
  - `Clock`: `KEY[0]`
  - `L`: `KEY[1]` (load control)
  - `R[2:0]`: `SW[2:0]` (parallel load input)
- **Output**:
  - `Q[2:0]`: `LEDR[2:0]` (output of LFSR)

---

### 🔗 HDLBits Problem Link

<img width="500" height="451" alt="image" src="https://github.com/user-attachments/assets/02e6c02a-91f2-4999-a98c-1447d1a59a0a" />

[View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mt2015_lfsr)

---

### 📘 Circuit Behavior

- Each bit stores a value using a flip-flop.
- On **clock rising edge**, new values are loaded:
  - If `L = 1`, **load parallel input R[i]**
  - If `L = 0`, **shift** with feedback:
    - Feedback = `Q[1] ^ Q[2]`
    - New Q[0] = Feedback
    - Q[1] = Q[0]
    - Q[2] = Q[1]

---

### 🔧 Design Notes

This is a **hierarchical Verilog** design using submodules.

- `lfsr_cell.v`: 1-bit block with mux + dff
- `top_module.v`: connects 3 `lfsr_cell` modules

---

### ✅ Verilog Implementation

📄 [View Full Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.7%20Shift%20Registers/3.7.5%203-bit%20LFSR/mt2015_lfsr.v)
