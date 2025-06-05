## Module_Name – Module Instantiation with Named Port Mapping

This problem is a continuation of module instantiation with a focus on **connecting ports by name**, which enhances code readability and maintainability.

---

### 🧠 Concept Insight  
- **Named port mapping** connects signals to module ports using their names.
- Syntax: `modulename instance_name (.port_name(signal_name), ...)`
- This method is **less error-prone** and more adaptable to port list changes than positional mapping.
- You will instantiate `mod_a` and connect its ports to top-level module ports as per the given mapping.

---

### 📘 Problem Statement  
Create a module that:

- Has 6 ports: inputs `a`, `b`, `c`, `d` and outputs `out1`, `out2`
- Instantiates `mod_a` using **named port mapping** as follows:

| `mod_a` Port | `top_module` Port |
|--------------|-------------------|
| out1         | out1              |
| out2         | out2              |
| in1          | a                 |
| in2          | b                 |
| in3          | c                 |
| in4          | d                 |

<img width="622" alt="{DE565E0C-5F8B-4CDE-907E-34B2C8F59C2E}" src="https://github.com/user-attachments/assets/614946d8-7a73-4e85-896c-c43cc6403844" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module_name)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Modules%3A%20Hierarchy/2.3.3%20Connecting%20ports%20by%20name/Module%20name.v)

<img width="600" alt="{1D6C805D-551D-4B65-A550-8CB5896637E0}" src="https://github.com/user-attachments/assets/794a6f73-5a9f-4a10-a113-49b1d2fdfa45" />

---

### 🛠 Design Note  
Using named connections improves **readability** and **code maintenance**, especially for large modules with many ports.
