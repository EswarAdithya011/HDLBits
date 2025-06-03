## Vector3 – Concatenation and Part Selection in Vectors

This problem practices the use of vector concatenation and part selection in Verilog, essential for manipulating and rearranging bits efficiently.

---

### 🧠 Concept Insight  
- **Concatenation (`{}`)** combines multiple vectors or bits into a larger vector.  
- **Part selection (`[high:low]`)** extracts specific bits from a vector.  
- Concatenation requires sized constants or vectors to avoid errors.  
- Concatenation and part selection can be used on both sides of an assignment for flexible bit manipulation.

---

### 📘 Problem Statement  
Given six 5-bit input vectors `a, b, c, d, e, f` (total 30 bits), and four 8-bit output vectors `w, x, y, z` (total 32 bits), build a circuit that:

- Concatenates all six input vectors into one continuous vector  
- Appends two 1-bit constants (`1'b1, 1'b1`) at the end to make 32 bits  
- Splits this 32-bit vector into four 8-bit output vectors: `w, x, y, z`

<img width="450" alt="{8E96CABA-FAA0-4095-9194-672738E3715A}" src="https://github.com/user-attachments/assets/94ae9827-c99a-4f20-9b4c-ee7e00a7ee25" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vector3)

---

### ✅ Solution  
📄 [View Solution Code on GitHub]([https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.5%20Vector3/Vector3.v](https://github.com/EswarAdithya011/HDLBits/tree/main/Problem%20Sets/2.%20Verilog%20Language/2.2%20Vectors/2.2.6%20Vector%20concatenation%20operators))

<img width="487" alt="{ADBD5FB0-0C91-4B3F-B787-19AB0EB7ED53}" src="https://github.com/user-attachments/assets/b4b4eba1-14bd-4a24-96b7-a3a8e56fc3c9" />

---

### 🛠 Design Note  
Mastering vector concatenation and part selection is crucial for efficient hardware design, enabling manipulation of wide buses and creation of complex data paths without excessive manual bit assignments.
