## Mt2015_muxdff – Submodule: D Flip-Flop with 2-to-1 Multiplexer

This module defines a **basic sequential logic block** combining a **2-to-1 multiplexer** and a **D flip-flop**, designed as a reusable **submodule** for hierarchical design.

---

### 🧠 Concept Insight  
- The module **selects between two inputs** `r_in` and `q_in` based on the **load signal `L`** using a 2:1 MUX.
- The selected value is then **stored in a D flip-flop** on the **positive edge** of the clock.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock input  
  - `L`: MUX select line  
  - `r_in`: Reset or load input  
  - `q_in`: Previous output from another FF  
- **Output**:  
  - `Q`: Flip-flop output

<img width="579" alt="{5F5DC236-0538-4B0D-9C43-47A2ACB68608}" src="https://github.com/user-attachments/assets/0246ec0a-008c-4881-a302-e2e114f452d4" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mt2015_muxdff)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.5%20Latches%20and%20Flip-Flops/3.5.11%20Mux%20and%20DFF(1)/mt2015_muxdff.v)

---

### 🛠 Design Note  
This type of module is foundational in **register design**, **pipeline staging**, and **controlled data path units** where conditional loading of data is required.
