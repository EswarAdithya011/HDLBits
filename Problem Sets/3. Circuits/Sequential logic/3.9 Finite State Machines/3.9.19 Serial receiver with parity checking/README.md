# FSM – Serial Data Receiver with Parity Check

## 🧠 Problem Title  
**fsm_serialdp**

---

## 📜 Problem Statement  

We want to add **odd parity checking** to the serial receiver. Parity checking adds **one extra bit** after each 8-bit data byte, making 9 bits in total (data + parity). The number of `1`s in these 9 bits must be **odd** for the byte to be considered valid.

The FSM must:
- Detect the **start bit** (logic 0).
- **Shift in 8 data bits** (LSB first).
- **Shift in 1 parity bit**.
- Check if the 9 bits have **odd parity**.
- Check for a correct **stop bit** (logic 1).
- Assert `done = 1` only if **parity is valid** and **stop bit is correct**.
- If the stop bit is incorrect, wait until idle state resumes before accepting a new frame.
---

<img width="500" height="368" alt="image" src="https://github.com/user-attachments/assets/8da50d73-6e20-45b0-9c00-1319e09944b0" />

## 🔗 HDLBits Link  
[hdlbits.fsm_serialdp](https://hdlbits.01xz.net/wiki/Fsm_serialdp)

---

## 📌 Concept Insight  

This builds upon the earlier serial receiver FSM by introducing a **9-bit stream validation** (8 data bits + 1 parity bit). It combines:
- **FSM control logic** to track bit counts and transitions
- A **parity calculator (TFF)** to track number of `1`s
- A **register to shift in data bits**
- Output signals:
  - `done` when byte received and valid
  - `out_byte` shows the received 8-bit value only on valid completion

---

## 🧪 Test Case Example  

### ✅ Valid Frame with Correct Parity  
```
Idle  Start  Data                      Parity  Stop
 1      0     1 0 0 1 0 1 1 0 (0x4B)     1      1
```
- Number of 1s = 5 (odd) ✅  
- `out_byte` = 8'b01101001 (0x4B)  
- `done` = 1

### ❌ Invalid Frame (Even Parity)  
```
Idle  Start  Data                      Parity  Stop
 1      0     1 0 0 1 0 1 1 0 (0x4B)     0      1
```
- Number of 1s = 4 (even) ❌  
- `done` = 0

---

## 📁 GitHub Solution Link  
[View Solution](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.19%20Serial%20receiver%20with%20parity%20checking/fsm_serialdp.v)
