## Andgate – Logical AND

The AND gate is a foundational component in digital design, forming the basis of more complex operations like arithmetic logic, decision-making control paths, and combinational circuits.

---

### Problem Statement  
Construct a simple logic circuit that implements the behavior of an AND gate using Verilog HDL. The output should be driven high (`1`) only when **both** input signals `a` and `b` are high.

📘 *Concept Insight:*  
Verilog allows bitwise (`&`) and logical (`&&`) operators. While both are valid for single-bit signals in this context, understanding their distinction is crucial for multi-bit or vector operations later on.


<img width="586" alt="{31E541BB-6CBC-40AB-978C-6B9922425FB2}" src="https://github.com/user-attachments/assets/7e8e450e-0941-4ff3-a866-54cca9e1d70c" />


🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Andgate)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.4%20AND%20gate/AND%20gate.v)

<img width="500" alt="{D5F4ACD9-BD01-4DCC-AA2A-04A0779FF4B2}" src="https://github.com/user-attachments/assets/862c7604-a815-4163-b0b2-62630472fc80" />


🛠 *Design Note:*  
This exercise emphasizes signal driving in Verilog. Inputs are driven externally, while the output must be actively driven internally using a continuous assignment (`assign`). This teaches foundational concepts of driver-sink relationships and logic synthesis.
