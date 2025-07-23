# 🧠 Problem: FSM - HDLC Framing

## 📝 Problem Statement

**HDLBits Link:** [fsm_hdlc](https://hdlbits.01xz.net/wiki/Fsm_hdlc)  
**Category:** Finite State Machine (FSM)  
**Subcategory:** Serial Bitstream FSMndicating the beginning/end of a frame → Signal `flag = 1`
- **01111111...**: Error (7 or more consecutive 1s) → Signal `err = 1`

When reset is asserted, the FSM starts as if the previous input was 0. The input is a continuous serial stream. The output signals (`disc`, `flag`, `err`) are asserted for one cycle only when the pattern completes.

<img width="500" height="879" alt="image" src="https://github.com/user-attachments/assets/160da168-af1a-49eb-b6f6-9ce65ff5a7c1" />


Create a finite state machine (FSM) to decode an HDLC-encoded serial data stream. The FSM must identify:

- **0111110**: A stuffed '0' (discard it) → Signal `disc = 1`
- **01111110**: A flag i

<img width="500" height="402" alt="image" src="https://github.com/user-attachments/assets/2c5a43c3-9913-4f4d-817a-0e247b65da9c" />

---

## ✅ Design Note

This FSM must count the number of consecutive 1s seen. After seeing five 1s:

- If a 0 follows → `disc = 1`  
- If another 1 follows → 
  - If it's the 6th 1 followed by a 0 → `flag = 1`
  - If it's the 6th 1 followed by another 1 → `err = 1`

Ensure correct transition from reset to avoid false detections. All outputs must be 1-cycle wide.

---

## 💻 Verilog HDL Solution

**GitHub Gist Link:** [fsm_hdlc.sv](https://gist.github.com/korrapolueswaradithya/fsm_hdlc.sv) 
