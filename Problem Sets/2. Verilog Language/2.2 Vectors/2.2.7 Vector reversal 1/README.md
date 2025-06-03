## Vectorr – Reversing Bit Order of an 8-bit Vector

This problem focuses on reversing the order of bits within an 8-bit input vector, a fundamental operation for bit-level data manipulation.

---

### 🧠 Concept Insight  
- Verilog does not support direct reversal of vector bit ordering using simple ranges like `in[0:7]`.  
- The **concatenation operator `{}`** can be used to manually reverse bits by selecting individual bits in reverse order.  
- Efficient bit reversal is important in signal processing, communication protocols, and hardware interfacing.

---

### 📘 Problem Statement  
Build a module with:

- An **8-bit input vector** `in`  
- An **8-bit output vector** `out` which reverses the bit ordering of `in`  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vectorr)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.6%20Vectorr/Vectorr.v)

<img width="500" alt="{49817D68-00CB-4439-893A-4621470EDB17}" src="https://github.com/user-attachments/assets/dc2a590e-0d84-49ce-9dbe-c2ad8a2720f7" />

---

### 🛠 Design Note  
Using concatenation to reverse bits simplifies the implementation, allowing a single assign statement instead of multiple individual bit assignments, which enhances code readability and maintainability.
