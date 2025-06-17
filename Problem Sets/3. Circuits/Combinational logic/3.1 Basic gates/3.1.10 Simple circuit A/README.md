## mt2015_q4a – XOR and AND Logic Function

This problem is derived from the 2015 midterm, question 4. It focuses on implementing a logic expression combining XOR and AND operations.

---

### 🧠 Concept Insight  
The Boolean expression `z = (x ^ y) & x` involves two basic gates:
- `x ^ y`: Outputs 1 when x and y are different.
- `& x`: Allows the XOR result to pass through only if x is 1.

This logic can also be interpreted as a conditional XOR, masked by the value of `x`.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `x`, `y`: 1-bit signals  
- **Output**:  
  - `z = (x ^ y) & x`  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mt2015_q4a)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Combinational%20logic/3.1%20Basic%20gates/3.1.10%20Simple%20circuit%20A/mt2015_q4a.v)

---

### 🛠 Design Note  
This example is a typical representation of masking or gating logic, commonly used in digital circuits where output conditions depend on control signals.
