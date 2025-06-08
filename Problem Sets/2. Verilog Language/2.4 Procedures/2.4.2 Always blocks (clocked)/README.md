## AlwaysBlock2 – XOR Gate with `assign`, `always @(*)`, and `always @(posedge clk)`

This exercise extends your understanding of **combinational and sequential always blocks** by showing how the same logic (XOR) can behave differently when placed in different types of constructs.

---

### 🧠 Concept Insight  
- **assign**: Drives wires with continuous logic.
- **Combinational always** (`always @(*)`): Implements pure logic evaluated continuously, uses `reg` and **blocking** assignments (`=`).
- **Sequential always** (`always @(posedge clk)`): Implements logic updated only on clock edges, uses **non-blocking** assignments (`<=`), and introduces **state** via flip-flops.
- This exercise demonstrates that the **same operation (XOR)** produces different behavior based on the block type.

---

### 📘 Problem Statement  
Create a module with:

- Inputs: `a`, `b`, `clk`
- Outputs:
  - `out_assign`: computed via `assign`
  - `out_always_comb`: computed via `always @(*)`
  - `out_always_ff`: computed via `always @(posedge clk)`

Observe how `out_always_ff` introduces a **one-cycle delay** due to clocking.

<img width="500" alt="{5EC4289F-ED52-4F15-AB64-27972704A6B0}" src="https://github.com/user-attachments/assets/4b69792d-6147-4a9f-b82b-c1f48cc5b67b" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Alwaysblock2)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Procedures/2.3.2%20AlwaysBlock2/AlwaysBlock2.v)

<img width="500" alt="{DEC4E57D-1D3C-4BBF-8BAC-88B2A8EB65B4}" src="https://github.com/user-attachments/assets/ad3a591a-ad3f-4e28-a73f-128eafe5da71" />

---

### 🛠 Design Note  
Understanding the timing and behavior differences between assign statements, combinational logic, and clocked logic is fundamental in RTL design. It’s critical when designing **pipelined, synchronous**, or **state-based** digital systems.
