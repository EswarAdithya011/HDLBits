### Problem Title: Bug Fix - 3-Input NAND Using 5-Input AND Gate

**Problem Statement**  
This three-input NAND gate doesn't work. Fix the bug(s).  
You're required to implement a 3-input NAND gate using a provided 5-input AND gate module. The current implementation has a bug. The module has three inputs `a`, `b`, `c`, and one output `out`. Correct the logic to match the intended NAND functionality.

**Concept Insight**  
A NAND gate outputs the inverse of an AND gate. To implement a 3-input NAND using a 5-input AND gate, feed the remaining unused inputs with logic high (`1`) and invert the output of the AND gate.

**HDLBits Link:**  
[Link](https://hdlbits.01xz.net/wiki/Exams/review2015_bugs_nand3)

**GitHub Solution Link:**  
[Link](https://github.com/KorrapoluEswarAdithya/HDLBits-Solutions/blob/main/Bug-Fix/bugs_nand3.v)

<img width="500" height="461" alt="image" src="https://github.com/user-attachments/assets/1410ceb6-e57c-4fd4-938a-737d8c846727" />

**Design Note**  
Resolved the bug by passing the three inputs along with two logic-high constants (`1'b1`) to the 5-input AND gate and then inverting the result to achieve NAND behavior. This guarantees correct output regardless of the unused input count in the original gate definition.
