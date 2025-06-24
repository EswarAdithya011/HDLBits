## Kmap1 – Logic Simplification using Karnaugh Map

This module implements a logic function derived from a 3-variable Karnaugh map. The K-map is simplified before implementation to reduce gate count and complexity.

---

### 🧠 Concept Insight  
Karnaugh maps (K-maps) help minimize Boolean functions by grouping adjacent '1's to identify simplified expressions. For a 3-input function (a, b, c), there are 8 possible input combinations.

From the given K-map, the minimized function is:  
`out = a | b | c`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `a`, `b`, `c`: 3 input variables  
- **Output**:  
  - `out`: Result from the minimized logic function  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Kmap1)

<img width="179" alt="{3DC21C9E-865F-479B-B622-A8C47D5B99F8}" src="https://github.com/user-attachments/assets/10effd6c-a1ff-4f01-ac26-fa0890f52329" />

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.3%20Karnaugh%20Map/Kmap1.v)

<img width="500" alt="{BCD53C7D-2594-4536-8102-F7460645CA62}" src="https://github.com/user-attachments/assets/5997d142-86d7-427d-9274-df52d48c69fc" />

---

### 🛠 Design Note  
This task emphasizes the importance of **Boolean minimization** in combinational logic design to achieve area and power efficiency. The final expression requires only one 3-input OR gate.
