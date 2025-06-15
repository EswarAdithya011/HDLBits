## Exams/m2014_q4i – Constant Output Logic

This problem focuses on generating a **constant logic output** using Verilog constructs.

---

### 🧠 Concept Insight  
You are expected to produce a fixed output value, which is common in test benches, simulation control circuits, or default states. The circuit diagram will likely depict a logic-0 or logic-1 output tied directly to a constant source.

---

### 📘 Problem Statement  
- **Output**:  
  - `out`: A 1-bit output that is hard-wired to a logic constant

<img width="350" alt="{67715380-C470-4F93-BAD7-3BED3988F7A3}" src="https://github.com/user-attachments/assets/f214b71e-0708-4ec6-8421-39a59bc477c4" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/m2014_q4i)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.2%20GND/m2014_q4i.v)

---

### 🛠 Design Note  
The circuit is purely combinational and doesn’t depend on any inputs. This is typically used to verify basic synthesis capability and constant assignment in Verilog. Whether the requirement is logic-0 or logic-1, buffer gates or direct assignment can be used for synthesis-ready coding.
