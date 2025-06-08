## Always If – 2-to-1 Multiplexer using `assign` and `if` statement

This problem illustrates how both **continuous assignments** and **procedural `if` statements** can be used to create multiplexers. You will build the same logic twice: once with an `assign` statement, and once with an `always` block.

---

### 🧠 Concept Insight  
- A **2-to-1 multiplexer** selects one of two inputs based on a condition.
- Using `assign` with the **ternary operator (`? :`)** is concise and synthesizes cleanly.
- Using `if` inside an `always @(*)` block allows for more flexibility, especially with complex conditions.
- A **combinational always block must assign all outputs** for all conditions to avoid creating unintended latches.

---

### 📘 Problem Statement  
Create a 2-to-1 mux with the following:

- Inputs: `a`, `b`, `sel_b1`, `sel_b2`
- Outputs:
  - `out_assign`: Implemented with an `assign` statement.
  - `out_always`: Implemented with an `always @(*)` and `if` statement.

The logic:
- Output `b` if both `sel_b1` and `sel_b2` are 1.
- Otherwise, output `a`.

<img width="500" alt="{9266FD38-6F15-4BBC-A914-5D6A66FD7FF6}" src="https://github.com/user-attachments/assets/2bf3ca9c-3a37-4656-983a-61216675ca8a" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Always_if)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Procedures/2.3.3%20Always_if/Always_if.v)

<img width="480" alt="{50DAD15A-76F2-439B-BD88-4F6E47D2F2EA}" src="https://github.com/user-attachments/assets/03fe82a0-ec69-4664-9167-463da7268d32" />

---

### 🛠 Design Note  
This problem reinforces how **logic control flow** can be described in Verilog using both dataflow (`assign`) and procedural (`always`) approaches. Ensuring that **every output is assigned under all conditions** is crucial to prevent latch inference in synthesis.
