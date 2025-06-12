## Adder100i – 100-bit Ripple-Carry Adder Using Full Adders

This problem builds a **100-bit ripple-carry adder** using **explicit instantiation of 100 full adder modules**. The goal is to deepen understanding of structural modeling in Verilog and how full adders can be chained to create large arithmetic units.

---

### 🧠 Concept Insight  
- A **ripple-carry adder** connects each full adder in series, where the carry-out of one becomes the carry-in of the next.
- This implementation requires:
  - **100 full adder instances**
  - Outputs for **individual carry-outs** (`cout`)
- This is an **example of hierarchical design** in Verilog.

---

### 📘 Problem Statement  
Create a 100-bit adder as follows:

- **Inputs**:
  - `a[99:0]`, `b[99:0]`: 100-bit operands
  - `cin`: Initial carry-in
- **Outputs**:
  - `sum[99:0]`: Sum of a + b + cin
  - `cout[99:0]`: Carry-out from each full adder, where `cout[99]` is the final carry-out

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Adder100i)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.5%20More%20Verilog%20Features/2.5.6%20Generate%20for-loop%3A%20100-bit%20binary%20adder%202/adder100i.v)

---

### 🛠 Design Note  
This problem introduces a real-world digital design pattern — **modular construction** using repeated instances. You can use a **generate loop** to avoid manually instantiating each full adder. This approach promotes cleaner, scalable code and matches how actual hardware is composed using reusable IP blocks or cells.

