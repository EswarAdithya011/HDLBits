## Vector4 – Using the Replication Operator for Sign Extension

This problem involves using the replication operator `{}` in Verilog to sign-extend an 8-bit number to 32 bits by replicating its sign bit.

---

### 🧠 Concept Insight  
- The **replication operator `{num{vector}}`** repeats a vector `num` times and concatenates the results.  
- It is commonly used for **sign extension**, where the sign bit (most significant bit) of a smaller number is replicated to fill a larger bit-width while preserving the signed value.  
- Sign extension ensures correct arithmetic operations on signed numbers in hardware.

---

### 📘 Problem Statement  
Build a module with:

- An **8-bit input vector**  
- A **32-bit output vector** which is the sign-extended version of the input, created by replicating the input’s most significant bit 24 times followed by the original 8 bits.

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vector4)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.7%20Vector4/Vector4.v)

---

### 🛠 Design Note  
Using the replication operator for sign extension is a clean and efficient method to preserve the sign in larger bit-widths, which is crucial in signed arithmetic operations and hardware design.
