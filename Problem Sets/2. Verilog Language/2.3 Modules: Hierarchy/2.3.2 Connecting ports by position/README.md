## Module_Pos – Module Instantiation with Positional Port Mapping

This problem builds upon basic module instantiation, focusing on **connecting ports by position** rather than by name.

---

### 🧠 Concept Insight  
- **Port mapping by position** connects external signals to module ports in **declaration order**.
- Syntax: `modulename instance_name (signal1, signal2, signal3);`
- This method is shorter, but **less maintainable** if the submodule's port list changes.
- The task is to instantiate `mod_a` and connect its ports to the top-level module ports using **positional mapping**.

---

### 📘 Problem Statement  
Create a module that:

- Has 3 ports: inputs `a`, `b` and output `out`
- Instantiates `mod_a` using **positional port mapping** and connects it to `a`, `b`, and `out`.

<img width="575" alt="{4E77A335-4105-4FCC-8954-BFB0CE35F670}" src="https://github.com/user-attachments/assets/3a3f0484-96e1-4e51-821c-39381b3331e9" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module_pos)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.2%20Modules/2.2.2%20Module_Pos/Module_pos.v)

<img width="563" alt="{2DE144C7-B061-4F26-8D42-3D3BBD87C7DA}" src="https://github.com/user-attachments/assets/91f79044-8e71-4b60-8ada-ceeae691c5ee" />

---

### 🛠 Design Note  
While shorter, positional connections are **prone to errors** during updates. Use them when module port orders are stable and small in number.
