## 7420 – Dual 4-Input NAND Gates

This task replicates the functionality of the 7420 integrated circuit, which contains two independent 4-input NAND gates.

---

### 🧠 Concept Insight  
A 4-input NAND gate performs the logic operation:  
`out = ~(a & b & c & d)`

The 7420 chip has two such gates:
- One with inputs: `p1a`, `p1b`, `p1c`, `p1d` → output: `p1y`
- One with inputs: `p2a`, `p2b`, `p2c`, `p2d` → output: `p2y`

---

### 📘 Problem Statement  
- **Inputs**:  
  - Gate 1: `p1a`, `p1b`, `p1c`, `p1d`  
  - Gate 2: `p2a`, `p2b`, `p2c`, `p2d`  
- **Outputs**:  
  - `p1y`, `p2y`: Each the NAND of the respective group of 4 inputs  

<img width="554" alt="{7054BA11-85BA-4D86-A1D3-F798E7C8529B}" src="https://github.com/user-attachments/assets/aa89438e-c88f-4203-9c51-b7b4aca28e7c" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/7420)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.7%207420%20chip/7420.v)

<img width="616" alt="{AA4F1A7A-3122-46F8-8343-391432760CCC}" src="https://github.com/user-attachments/assets/3de42eba-6d16-4ae0-8612-7e62e56db129" />

---

### 🛠 Design Note  
This exercise demonstrates how simple combinational logic chips are described at the RTL level and mirrors real-world IC behavior.
