## Vector0 – Vector Basics

Vectors in Verilog allow grouping multiple related signals under a single name, simplifying circuit design and signal manipulation.

---

### Problem Statement  
Design a module with:

- A **3-bit input vector** `i`  
- A **3-bit output vector** `o` that outputs the same value as `i`  
- Three **1-bit output ports**: `o0`, `o1`, and `o2`

The connections must be:

- `i[0] -> o0`  
- `i[1] -> o1`  
- `i[2] -> o2`  
- Entire vector `i` -> output vector `o`

📘 *Concept Insight:*  
In Verilog, vectors are declared with the width before the name (e.g., `wire [2:0] i;`), while individual bits are accessed using part-select syntax with the index after the name (e.g., `i[1]`). This problem helps understand vector declaration and bitwise access.

<img width="600" alt="Vector0 Diagram" src="https://github.com/user-attachments/assets/vector0-diagram.png" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vector0)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.3%20Vector0/Vector0.v)

