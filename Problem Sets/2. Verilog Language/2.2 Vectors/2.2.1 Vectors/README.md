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

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vector0)

<img width="571" alt="{48A681F9-E3A9-4F9B-ABB1-62E0A232D7C0}" src="https://github.com/user-attachments/assets/5634cd48-3a8d-4fa9-bcaa-58f701f21e7f" />

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.3%20Vector0/Vectors.v)

<img width="500" alt="{0E54A218-1E2C-4F05-956F-871E1EFF1407}" src="https://github.com/user-attachments/assets/3f5f1aa8-4f4e-4e40-bb6b-c5ba15a35c5c" />
