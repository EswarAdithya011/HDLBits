## Norgate – Logical NOR

The NOR gate is a universal logic gate that outputs a high signal (`1`) only when **both** inputs are low (`0`). It combines an OR gate followed by an inverter, making it a fundamental element for constructing any digital logic system.

---

### Problem Statement  
Design a Verilog module to implement a 2-input NOR gate. The output must be the logical negation of the OR result between inputs `a` and `b`.

📘 *Concept Insight:*  
In Verilog, a NOR operation is written by first applying the OR operator (`|` or `||`) and then negating the result using the bitwise NOT operator (`~`). This models the NOR behavior in a single continuous assignment.

<img width="537" alt="{5BF177E7-F322-49DE-8880-9095BACFF97F}" src="https://github.com/user-attachments/assets/ff6c0b26-a40e-4df4-968d-8167880f8fb6" />


🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Norgate)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.5%20NOR%20gate/NOR%20gate.v)

<img width="530" alt="{980AE593-7043-4CBE-B1A4-5B5A7C773DFB}" src="https://github.com/user-attachments/assets/d387d5ee-0a07-4854-a9f8-81246a6d66bc" />

🛠 *Design Note:*  
The `assign` keyword is used to define a continuous assignment in Verilog, which keeps the output dynamically updated based on input changes. This reflects how physical NOR gates function in real hardware.
