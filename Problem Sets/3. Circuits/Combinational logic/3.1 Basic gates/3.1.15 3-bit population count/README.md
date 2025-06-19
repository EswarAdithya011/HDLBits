## Popcount3 – Population Count for 3-Bit Vector

This exercise focuses on building a simple **population count** (popcount) circuit, which counts how many bits in the input are set to '1'.

---

### 🧠 Concept Insight  
A **population count** circuit returns the number of high bits (`1`) in a binary vector.

For a 3-bit input `in[2:0]`, the result is a 2-bit output `out[1:0]` representing the number of 1's in the input.

---

### 📘 Problem Statement  
- **Inputs**: `in[2:0]` – a 3-bit input vector  
- **Output**: `out[1:0]` – the number of 1's in the input vector (0–3)

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Popcount3)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.15%203-bit%20population%20count/popcount3.v)

<img width="450" alt="{596BE59D-A6A3-4384-BCE5-2384DB976E5C}" src="https://github.com/user-attachments/assets/ddaad274-0085-4b36-bc2c-3d9160584cca" />

---

### 🛠 Design Note  
This design uses a **combinational always block** with conditional checks and increment logic to count set bits. It's an essential construct for **bit counting**, used in parity, error detection, and digital signal processing systems.
