## Mux2to1 – Basic 2-to-1 Multiplexer (1-bit)

This exercise introduces the most fundamental combinational component: a **2-to-1 multiplexer**, which selects one of two inputs based on a control signal.

---

### 🧠 Concept Insight  
A **2:1 multiplexer** selects between two inputs `a` and `b` using a **selector bit `sel`**:  
- If `sel = 0` → `out = a`  
- If `sel = 1` → `out = b`  

This behavior is implemented using the **ternary conditional operator**:  
`assign out = sel ? b : a;`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a` – input 0  
  - `b` – input 1  
  - `sel` – select line  
- **Output**:  
  - `out` – selected input

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mux2to1)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.2%20Multiplexers/3.2.1%202-to-1%20multiplexer/mux2to1.v)

<img width="451" alt="{A036C88E-7B7C-4755-85A1-5B90DFE3D8F0}" src="https://github.com/user-attachments/assets/369cad29-c0f8-4b55-a2b9-ce989e55fad3" />

---

### 🛠 Design Note  
Multiplexers are used extensively in **datapath selection**, **bus control**, and **control logic**. Understanding the 2:1 mux is foundational for building wider mux structures and FSM designs.
