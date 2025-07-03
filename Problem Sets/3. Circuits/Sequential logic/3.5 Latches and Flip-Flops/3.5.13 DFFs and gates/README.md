## Exams/ece241_2014_q4 – FSM from D Flip-Flops and Logic

This module implements a **Finite State Machine (FSM)** constructed using three **D flip-flops** and logic gates, based on a given schematic. The initial state of all flip-flops is 0.

---

### 🧠 Concept Insight  
Each D flip-flop receives logic expressions based on current state and input `x`. The circuit transitions through a set of states depending on `x` and produces an output `z`.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `clk`: Clock signal  
  - `x`: Input signal for FSM  
- **Output**:  
  - `z`: Output signal dependent on FSM state and input  

<img width="402" alt="{6191D1FC-91DE-4D56-A3A0-EB4860343DAA}" src="https://github.com/user-attachments/assets/275df163-1e33-41b6-b8bf-36ec22fbcc8f" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q4)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/5.%20Finite%20State%20Machines/Exams_ece241_2014_q4.v)

<img width="458" alt="{67E1483C-56F9-4BB8-A2A8-7B0BAD3F9CD7}" src="https://github.com/user-attachments/assets/2d458d6c-98f4-464d-9685-90d384566966" />

---

### 🛠 Design Note  
This FSM illustrates **Moore-type behavior** where outputs depend solely on state, and how to implement **custom FSMs using raw D flip-flop logic** instead of `always_ff` or `case`-based descriptions.
