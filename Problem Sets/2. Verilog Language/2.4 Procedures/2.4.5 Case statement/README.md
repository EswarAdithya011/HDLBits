## Always Case – 6-to-1 Multiplexer Using `case` Statement

This problem demonstrates how to use a **`case` statement inside a combinational `always @(*)` block** to implement a multiplexer efficiently, especially when dealing with **multiple cases**.

---

### 🧠 Concept Insight  
- A **`case` statement** is a cleaner alternative to chained `if-else` blocks when multiple conditions depend on a single signal.
- Like `if` statements, **you must assign all outputs under all conditions** to prevent latch inference.
- Always include a **default** case to handle any unspecified input conditions and **avoid synthesis warnings**.

---

### 📘 Problem Statement  
Build a 6-to-1 multiplexer that behaves as follows:

- **Inputs**:
  - `sel`: 3-bit select line.
  - `a, b, c, d, e, f`: 4-bit inputs.
- **Output**:
  - `out`: 4-bit output.

The logic:
- When `sel = 0` to `5`, output the corresponding input.
- Otherwise, output `4'b0000`.

```
always @(*) begin     // This is a combinational circuit
    case (in)
      1'b1: begin 
               out = 1'b1;  // begin-end if >1 statement
            end
      1'b0: out = 1'b0;
      default: out = 1'bx;
    endcase
end
```

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Always_case)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.4%20Procedures/2.4.5%20Case%20statement/always_case.v)

<img width="500" alt="{630D0E03-FEA0-4B7D-B367-0794E953F148}" src="https://github.com/user-attachments/assets/c67c34dd-c335-4d6f-81c3-653a2fba04e1" />

---

### 🛠 Design Note  
The `case` statement offers a **concise and readable structure** for multiplexer logic when compared to nested `if` blocks. Including a **default clause** is critical for functional correctness and to avoid **accidental latch inference** during synthesis.
