## Always NoLatches – Arrow Key Decoder from Scancode

This problem illustrates a key practice in hardware design: **avoiding latch inference** by ensuring **all outputs are assigned** in all cases of a combinational logic block.

---

### 🧠 Concept Insight  
- When using `always @(*)`, outputs must be assigned in **all possible execution paths**.
- Leaving out assignments for some paths leads to **unintended latches**, which can cause unreliable hardware.
- A clean method to avoid this is to **initialize all outputs to zero** before the case statement.

---

### 📘 Problem Statement  
Build a circuit that detects arrow key presses from 16-bit PS/2 scancodes.

- **Input**:
  - `scancode[15:0]`: The last two bytes of scancode.
- **Outputs**:
  - `left`, `right`, `up`, `down`: Set to 1 if the corresponding key is detected; otherwise, 0.

| Scancode     | Arrow Key    |
|--------------|--------------|
| 16'he06b     | Left Arrow   |
| 16'he072     | Down Arrow   |
| 16'he074     | Right Arrow  |
| 16'he075     | Up Arrow     |
| Otherwise    | None (All 0) |

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Always_nolatches)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.4%20Procedures/2.4.8%20Avoiding%20latches/always_nolatches.v)

<img width="591" alt="{23FFFB6D-57B3-4E6A-8FE8-24FC63AB15B2}" src="https://github.com/user-attachments/assets/eeba4f77-967d-4a69-afd7-b94a39ca584c" />

---

### 🛠 Design Note  
Initializing all outputs to `1'b0` **before** the case block is a safe and clean method to prevent **latch inference**, especially when only one output is activated per condition. This ensures synthesis results in **pure combinational logic**.
