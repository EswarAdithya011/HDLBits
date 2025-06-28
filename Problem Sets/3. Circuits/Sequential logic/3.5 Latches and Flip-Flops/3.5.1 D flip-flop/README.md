## DFF – Single D Flip-Flop

This module implements a **basic D flip-flop**, the fundamental building block of sequential logic circuits. It stores the input `d` on the **rising edge** of the clock signal and outputs the stored value on `q`.

---

### 🧠 Concept Insight  
A **D flip-flop** captures the value of `d` at the **positive edge** of the `clk`. This value remains stable at `q` until the next rising edge. It is used for **data storage**, **registers**, **state machines**, and more.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock input  
  - `d`: Data input  
- **Output**:  
  - `q`: Output that holds the stored bit  

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Dff)

<img width="175" alt="{A4D26C39-46E4-4610-904C-23CBACB879E5}" src="https://github.com/user-attachments/assets/d1322a04-b546-43d8-9296-e36c71eaaeec" />

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Sequential%20Logic/4.1%20Flip-Flops/Dff.v)

<img width="450" alt="{7611B37B-C86F-4128-BC76-1EC07F3615F2}" src="https://github.com/user-attachments/assets/27872047-5d57-40a7-90c4-71e1830e44fc" />

---

### 🛠 Design Note  
The use of `always @(posedge clk)` synthesizes a **D flip-flop** in hardware. This forms the basis for more advanced storage elements and timing-based designs.
