## exams/2014_q4a_top → `Hierarchical 4-bit Shift Register using MUXDFF Instances`

Design a **4-bit hierarchical shift register** using structural Verilog by instantiating a submodule named `MUXDFF` four times, each representing one stage of the register.

This is based on a hardware schematic with **multiplexers + D flip-flops** forming each stage, capable of either loading parallel data or shifting serial data, depending on control signals.

---

### 🧠 Concept Insight

- Each `MUXDFF` unit contains:
  - A **2:1 multiplexer** that selects between loading a parallel value (`R[i]`) or the previous stage's output.
  - A **D flip-flop** clocked on the **positive edge**.
- Control Signals:
  - `L` = Load enable: When high, load value from switches (`R`).
  - `E` = Enable: When high and not loading, shift input serially.
- The input to the first stage comes from a single serial input `w`.

This modular design is ideal for FPGA implementation and mirrors the structure commonly used in real-world digital system designs.

---

### 📘 Problem Statement

Design a top-level module implementing:

- A **4-bit shift register** using `MUXDFF` submodules
- Connections:
  - `clk`  → `KEY[0]`
  - `E`    → `KEY[1]`
  - `L`    → `KEY[2]`
  - `w`    → `KEY[3]`
  - `R[3:0]` → `SW[3:0]`
  - Output `LEDR[3:0]`

<img width="500" height="474" alt="image" src="https://github.com/user-attachments/assets/c676a2e8-0e0e-442b-ab1c-6408300d2ade" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/2014_q4a_top)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.7%20Shift%20Registers/3.7.8%20Shift%20register(2)/2014_q4b.v)

---

### 🛠 Design Note

- The first MUXDFF instance takes `w` as input.
- Each subsequent instance takes the previous stage’s output as its input.
- Signals are chained in the order:  
  `w` → `stage0` → `stage1` → `stage2` → `stage3`
- Each output connects to the corresponding red LED (`LEDR[i]`).

This design demonstrates **hierarchical modeling** in Verilog and how to assemble a functional multi-bit register using repeated subcircuits.
