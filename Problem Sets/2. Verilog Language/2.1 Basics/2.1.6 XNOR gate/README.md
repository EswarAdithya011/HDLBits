## Xnorgate – Logical XNOR

The **XNOR (Exclusive-NOR)** gate is a fundamental digital logic component that outputs high (`1`) only when both input values are the same—either both `0` or both `1`. It is essential in digital comparators, parity circuits, and control systems where equality checks are required.

---

### Problem Statement  
Construct a 2-input XNOR gate using Verilog HDL. The output must be high when inputs `a` and `b` are logically equivalent and low otherwise.

📘 *Concept Insight:*  
This exercise highlights compound logic operations using Verilog’s bitwise operators. An XNOR can be expressed by inverting the result of an XOR operation, showcasing how basic operators can be combined for more complex logic synthesis.

<img width="489" alt="{8984ABC2-4C2C-46C5-A471-B612838102F0}" src="https://github.com/user-attachments/assets/1a2a950d-2366-4cf0-851f-91361a10cc84" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Xnorgate)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.6%20XNOR%20gate/XNOR%20gate.v)

<img width="490" alt="{FD8C34A9-7EC6-44B9-8264-98E370A122A6}" src="https://github.com/user-attachments/assets/aaf432f5-0960-491f-ab41-4a1e9c709dc7" />

🛠 *Design Note:*  
This problem reinforces the idea of continuous assignments in combinational circuits. Understanding how XOR and inversion interplay is key to mastering logical equality operations in RTL design.

---
