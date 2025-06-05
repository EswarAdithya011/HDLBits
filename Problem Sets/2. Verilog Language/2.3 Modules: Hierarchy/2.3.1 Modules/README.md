## Module – Instantiating a Sub-Module

This problem introduces **module instantiation** in Verilog. The goal is to build a hierarchical design by connecting a submodule (`mod_a`) to a top-level module.

---

### 🧠 Concept Insight  
- A **module** is the building block of a Verilog design.
- Modules can be **instantiated** inside other modules to form a **hierarchical circuit**.
- You can connect ports **by position** or **by name**.
- `mod_a` has three ports: `input in1`, `input in2`, `output out`.
- Your task is to instantiate `mod_a` and connect it to your top-level ports `a`, `b`, and `out`.

<img width="400" alt="{28A7772B-9774-48A1-AA4E-2805CEBCC21D}" src="https://github.com/user-attachments/assets/963bfa68-2f7a-4856-a2e6-6133d480e261" />

---

### 📘 Problem Statement  
Build a module that:

- Has **3 ports**: inputs `a`, `b` and output `out`
- Instantiates the provided submodule `mod_a` and connects it to `a`, `b`, and `out`.

<img width="567" alt="{FA648EDF-A66C-4CF6-9216-E770FE1DEBF3}" src="https://github.com/user-attachments/assets/cb4573d2-b63b-4fc7-a4a9-15b01f4154f2" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Modules%3A%20Hierarchy/2.3.1%20Modules/Module.v)

<img width="500" alt="{8A7FDB41-86D4-451F-ABD0-058B189AC611}" src="https://github.com/user-attachments/assets/ee0f7210-5533-4a9e-98f9-293c00db6441" />

---

### 🛠 Design Note  
This is the foundational concept in **hierarchical digital design**. Mastering module instantiation and port connection lays the groundwork for designing scalable and reusable digital systems.
