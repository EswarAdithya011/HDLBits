## Problem Title: 4-bit Shift Register with Down Counter  
### Problem Statement:  
Design a 4-bit register that functions both as a shift register and as a down counter based on control signals. The module has the following behavior:
- When `shift_ena = 1`, the register performs a left shift, loading `data` into the most significant bit (MSB), and shifting the rest.
- When `count_ena = 1`, the register decrements its current value by 1.
- When both control signals are 0, the register holds its value.
- If both `shift_ena` and `count_ena` are 1 simultaneously, the behavior is **don't care**, as the system will never trigger both in practice.

**Note:** This is the first part in a five-stage design leading up to a complex counter system.

### Concept Insight:
- Use a 4-bit register to store current value `q`.
- Priority between `shift_ena` and `count_ena` does not need to be defined.
- At every clock edge:
  - If `shift_ena` is high, perform: `q <= {q[2:0], data}`.
  - If `count_ena` is high, perform: `q <= q - 1`.
  - If both are low, retain the current value.

<img width="500" height="252" alt="image" src="https://github.com/user-attachments/assets/835803df-8630-4c11-bfc9-3742377a2b84" />

### HDLBits Link:  
[HDLBits - exams/review2015_shiftcount](https://hdlbits.01xz.net/wiki/Exams/review2015_shiftcount)

### GitHub Solution Link:  
[GitHub - HDLBits Solutions Repository](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Building%20Larger%20circuits/3.10.2%204-bit%20shift%20register%20and%20down%20register/review2015_shiftcount.v)

<img width="500" height="563" alt="image" src="https://github.com/user-attachments/assets/423ed69b-120c-46a9-bf97-bbcce1938425" />

<img width="500" height="575" alt="image" src="https://github.com/user-attachments/assets/8ac54a8c-63d9-4730-ae1b-f8e2ed662914" />

### Design Note:
- This circuit combines serial input logic (MSB-first) with decrement capability.
- It forms the first core of a composite counter, showing multi-function control over a single 4-bit register.
- Maintain clean conditional blocks to ensure correct priority-free functionality.
