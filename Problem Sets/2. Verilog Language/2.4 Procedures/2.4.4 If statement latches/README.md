## Always If2 – Preventing Unintended Latches in Combinational Logic

This problem focuses on a **common mistake** when writing combinational logic using procedural `always` blocks — failing to assign outputs in all conditions, which leads to **unintentional latch inference**.

---

### 🧠 Concept Insight  
- In **combinational logic**, all outputs **must be assigned** a value in **every possible condition**.
- Failing to do so causes synthesis tools to infer **latches** to "remember" the output value.
- A proper fix is either:
  - Provide an `else` clause.
  - Assign a **default value** before the conditional logic.

---

### 📘 Problem Statement  
You are given incorrect behavioral code that causes latch inference due to missing `else` blocks. Fix the bugs so that:

- `shut_off_computer` is **1** only when `cpu_overheated` is **1**; otherwise **0**.
- `keep_driving` is **1** only when `~arrived` and `~gas_tank_empty`; otherwise **0**.

<img width="468" alt="{33E36D1C-54D7-4161-8042-E4544EADAE77}" src="https://github.com/user-attachments/assets/425de0e1-9846-4899-81a0-6ce993d11b6d" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Always_if2)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.4%20Procedures/2.4.4%20If%20statement%20latches/always_if2.v)

<img width="500" alt="{FAE5CB5F-2598-4D6A-B284-2382CFF9CCE8}" src="https://github.com/user-attachments/assets/1b8349c5-caa6-49de-b7df-5c2b50baae5d" />

---

### 🛠 Design Note  
This problem emphasizes that **procedural `always @(*)` blocks must not omit conditions**. Either use a default assignment at the top of the block or complete the conditional structure. This practice **avoids synthesis warnings** and ensures **hardware behaves predictably**.
