## Norgate – Logical NOR

The NOR gate is a universal logic gate that outputs a high signal (`1`) only when **both** inputs are low (`0`). It combines an OR gate followed by an inverter, making it a fundamental element for constructing any digital logic system.

---

### Problem Statement  
Design a Verilog module to implement a 2-input NOR gate. The output must be the logical negation of the OR result between inputs `a` and `b`.

📘 *Concept Insight:*  
In Verilog, a NOR operation is written by first applying the OR operator (`|` or `||`) and then negating the result using the bitwise NOT operator (`~`). This models the NOR behavior in a single continuous assignment.

![image](https://github.com/user-attachments/assets/73735f0c-9a2c-4e57-88dd-58d2484292b9)


🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Norgate)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.5%20NOR%20gate/NOR%20gate.v)

![image](https://github.com/user-attachments/assets/2eccd86a-c152-4029-bda4-9d3eb70d8681)

🛠 *Design Note:*  
The `assign` keyword is used to define a continuous assignment in Verilog, which keeps the output dynamically updated based on input changes. This reflects how physical NOR gates function in real hardware.
