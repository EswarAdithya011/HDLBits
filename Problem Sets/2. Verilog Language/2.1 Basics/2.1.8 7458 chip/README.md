## 7458 – Logic Gate Combination Chip

The **7458** chip integrates **four 2-input AND gates** and **two 2-input OR gates** in a single module, commonly used in classic combinational digital systems. Modeling such chips in Verilog builds a strong understanding of gate-level abstraction and the wiring required between components.

---

### 🧩 Problem Statement  
Construct a Verilog module replicating the structure and functionality of the 7458 chip. It accepts ten input signals and produces two output signals:

- The first four AND gates take combinations of the first six inputs and feed into the `p1y` output through an OR gate.
- The remaining two AND gates take the next four inputs and produce the `p2y` output through another OR gate.

📘 *Concept Insight:*  
This exercise emphasizes how **intermediate wires** act as internal connections between components. It also demonstrates how a collection of basic gates can be architected to form complex logic modules.

<img width="605" alt="{A9787A4C-6A17-46AD-894D-A5CFCFF17BF9}" src="https://github.com/user-attachments/assets/d4f04ef4-1269-4325-98d5-7e19c40f2484" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/7458)

---

### ✅ Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.8%207458%20chip/7458%20chip.v)

<img width="615" alt="{A16059E5-4076-48DF-AE78-A0AE9BB17457}" src="https://github.com/user-attachments/assets/4b445e0b-2e25-422e-a583-3565d85fa04c" />

🛠 *Design Notes:*  
- Reinforces the practice of structuring logic with clearly named intermediate wires.
- Useful for building confidence in organizing and debugging combinational circuits in HDL.

