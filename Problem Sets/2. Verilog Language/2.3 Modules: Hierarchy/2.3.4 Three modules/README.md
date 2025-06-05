## Module_Shift – 3-bit Shift Register using D Flip-Flop Instantiation

This problem builds a **3-bit shift register** by instantiating and chaining three D flip-flop modules, demonstrating sequential circuit design and internal signal wiring.

---

### 🧠 Concept Insight  
- A **D flip-flop** stores one bit and updates its output on the clock edge.
- A **shift register** is a sequential circuit where data shifts from one flip-flop to the next on each clock cycle.
- You need to **instantiate three `my_dff` modules**, connect them in series, and use internal wires to carry intermediate outputs.

---

### 📘 Problem Statement  
Construct a shift register using:

- **Module Provided**:  
  `module my_dff ( input clk, input d, output q );`
- **Your Task**:  
  - Use **3 instances** of `my_dff`
  - Input: `clk`, `d`
  - Output: `q1`, `q2`, `q3`
  - Chain them as: `d → q1 → q2 → q3`

<img width="679" alt="{ECD2B52B-FF53-4F47-8FC3-4722E22EB16C}" src="https://github.com/user-attachments/assets/c2f346af-56ba-4411-b258-1c1b5d3efe39" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module_shift)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Modules%3A%20Hierarchy/2.3.4%20Three%20modules/Module%20shift.v)

<img width="700" alt="{6CCC49D3-165E-49E7-A0B6-6309470A4F2E}" src="https://github.com/user-attachments/assets/8b0b1b77-9645-440e-8e05-ebe9c8866744" />

---

### 🛠 Design Note  
This is an essential exercise in **modular design** and **sequential logic construction**, emphasizing the use of internal wires and proper signal flow.
