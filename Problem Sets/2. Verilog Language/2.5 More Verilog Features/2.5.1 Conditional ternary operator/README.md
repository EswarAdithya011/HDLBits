## Conditional – 4-Way Minimum using Ternary Operator

This problem highlights the use of Verilog’s **conditional (ternary) operator** `(condition ? true_expr : false_expr)` to implement combinational logic efficiently.

---

### 🧠 Concept Insight  
- The ternary operator is useful for writing **compact and readable multiplexers** and decision logic.
- By chaining multiple ternary operations, complex comparisons like **finding the minimum of multiple numbers** can be composed.
- All expressions in a conditional statement must be **synthesizable** (no side effects or delays).

---

### 📘 Problem Statement  
Given four 8-bit **unsigned** inputs: `a`, `b`, `c`, and `d`, compute the **minimum value** among them using conditional (`? :`) operators.

- **Inputs**:
  - `a, b, c, d`: 8-bit unsigned integers.
- **Output**:
  - `min`: The smallest of the four values.

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Conditional)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.5%20More%20Verilog%20Features/2.5.1%20Conditional%20ternary%20operator/conditional.v)

<img width="458" alt="{4E6A58C9-000E-4112-98AF-A8D2630CA042}" src="https://github.com/user-attachments/assets/1cf78297-11f9-41bf-9f13-677304441ebe" />

---

### 🛠 Design Note  
This exercise demonstrates how **multi-stage minimum comparisons** can be efficiently implemented with **chained ternary operators**, avoiding the verbosity of nested `if` statements or case structures while maintaining clean and synthesizable logic.
