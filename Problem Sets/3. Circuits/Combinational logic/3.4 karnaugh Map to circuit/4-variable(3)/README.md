## Kmap4 – Karnaugh Map Symmetrical XOR/XNOR Logic

This module implements a logic function derived from a **Karnaugh map** where the output toggles with any single-bit input change. Such behavior indicates a **parity-based symmetrical function**.

---

### 🧠 Concept Insight  
From analysis of the K-map, the function can be expressed as:  
`out = ((a ⊕ b) & ~(c ⊕ d)) | (~(a ⊕ b) & (c ⊕ d))`  
Which simplifies to a **2-bit XOR parity comparator**:
- The output is high when the **XOR of `a` and `b`** is **not equal** to the **XOR of `c` and `d`**.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a`, `b`, `c`, `d`: 4 input variables  
- **Output**:  
  - `out`: Parity difference detector output  

<img width="335" alt="{B972DD89-EB6E-422A-B4E1-77D52B8FB5BD}" src="https://github.com/user-attachments/assets/fa5d8b0d-93ac-43c7-98ac-e4e1ef61cf00" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Kmap4)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.3%20Karnaugh%20Map/Kmap4.v)

<img width="576" alt="{97C15DDA-940E-4BF4-96BD-17608618E691}" src="https://github.com/user-attachments/assets/4921601c-6b3c-4a70-909b-aa92bd845b51" />

---

### 🛠 Design Note  
This exercise reveals how certain logic functions cannot be simplified through traditional SOP/POS forms but can be expressed cleanly through **XOR/XNOR operations**, showcasing the importance of pattern recognition in digital design.
