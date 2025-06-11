## Vector100r – Reverse a 100-bit Input Vector

This problem focuses on bitwise manipulation within a wide vector. Specifically, it requires **reversing the order** of bits from MSB to LSB and vice versa.

---

### 🧠 Concept Insight  
- Reversing a bit-vector means bit[0] becomes bit[99], bit[1] becomes bit[98], ..., bit[99] becomes bit[0].
- A **`for` loop inside an `always @(*)` block** is ideal for bit-level manipulations in a combinational circuit.
- Make sure to assign **each bit exactly once** to avoid latch inference or synthesis warnings.

---

### 📘 Problem Statement  
Design a circuit that takes a 100-bit vector input and outputs the reversed version of the same:

- **Input**:  
  - `in[99:0]`: 100-bit input vector  
- **Output**:  
  - `out[99:0]`: Bit-reversed version of the input

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vector100r)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.5%20More%20Verilog%20Features/2.5.4%20Combinational%20for-loop%3A%20Vector%20reversal%202/vector100r.v)

---

### 🛠 Design Note  
Using a **`for` loop** in a combinational `always` block is both efficient and clear for reversing large bit-vectors. This technique is widely used in hardware designs where **bit reordering**, **byte swapping**, or **endianness conversion** is required, such as in **network packets** or **DSP pipelines**.
