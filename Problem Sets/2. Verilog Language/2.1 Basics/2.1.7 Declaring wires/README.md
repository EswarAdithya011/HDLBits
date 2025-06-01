## Wire Decl – Internal Signal Declaration

As digital designs grow in complexity, intermediate signals become essential for connecting logic blocks within a module. Declaring internal wires in Verilog provides the flexibility to modularize combinational circuits and organize logic paths clearly.

---

### Problem Statement  
Design a combinational circuit with multiple logic gates, using internal wires to connect intermediate signals. Specifically, implement a circuit that uses **AND**, **OR**, and **NOT** gates, ensuring correct internal wiring declarations.

📘 *Concept Insight:*  
While input and output ports are implicitly treated as wires, internal connections require explicit wire declarations. This exercise demonstrates how internal logic can be structured using `wire` types, reinforcing the one-driver principle—each wire should be driven by exactly one source.

<img width="545" alt="{C7EBB4B1-26B3-4DDB-B7E1-09B65DF94EA7}" src="https://github.com/user-attachments/assets/5cdccbcb-d59f-4700-9e00-6664042e90de" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Wire_decl)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.7%20Declaring%20wires/Declaring%20wires.v)

<img width="450" alt="{5A9D7DAD-AC62-40FB-B4CD-6894822478AD}" src="https://github.com/user-attachments/assets/48026f4b-9a28-42e4-a232-44e04139f45e" />

🛠 *Design Note:*  
This problem introduces practical design habits in HDL development—declaring clean internal connections and structuring logic in readable layers. Using intermediate wires not only makes debugging easier but also reflects real-world schematic design practices.
