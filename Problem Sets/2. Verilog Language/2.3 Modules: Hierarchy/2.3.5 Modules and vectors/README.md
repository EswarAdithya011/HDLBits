## Module_Shift8 – 8-bit 3-stage Shift Register with Multiplexer Output

This problem expands on modular design with **vector-based ports** and introduces the combination of **sequential and combinational logic** using a shift register and multiplexer.

---

### 🧠 Concept Insight  
- `my_dff8` is an 8-bit wide D flip-flop module.
- Instantiating **three `my_dff8` modules** forms a **3-stage shift register**.
- A **4-to-1 multiplexer** selects between:
  - Direct input (`d`)
  - Output of 1st stage
  - Output of 2nd stage
  - Output of 3rd stage (final shift output)
- The selection is controlled by a 2-bit signal `sel`.

---

### 📘 Problem Statement  
Design a top-level module that:

- Has:
  - Inputs: `clk`, `sel[1:0]`, and `d[7:0]`
  - Output: `q[7:0]`
- Internally:
  - Instantiates and chains **three `my_dff8`** modules
  - Implements a **4-to-1 mux** to select the output based on `sel`

<img width="676" alt="{68AA8B7D-545F-4E48-B9CF-C3FF4D34EBA0}" src="https://github.com/user-attachments/assets/7b3b2bee-f88a-44f7-8c9b-dea79fc2b605" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Module_shift8)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.3%20Modules%3A%20Hierarchy/2.3.5%20Modules%20and%20vectors/module_shift8.v)

<img width="700" alt="{F67B90FF-97DE-454B-8CE4-B277ABFB96EC}" src="https://github.com/user-attachments/assets/f5b7885a-fc3b-43ff-bb1e-bb2940c9bb7a" />

---

### 🛠 Design Note  
This is a fundamental example of **vector-aware sequential logic**, emphasizing **multi-bit data paths**, **modular reuse**, and **MUX-based output control** – all vital skills in scalable RTL design.
