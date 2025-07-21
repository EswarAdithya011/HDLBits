# FSM – Serial Data Receiver with Output Byte

## 🧠 Problem Title
**fsm_serialdata**

---

## 📜 Problem Statement

Now that you have a finite state machine that can identify when bytes are correctly received in a serial bitstream, add a datapath that will output the correctly-received data byte. `out_byte` needs to be valid when `done` is 1, and is don't-care otherwise.

Note that the serial protocol sends the **least significant bit first**.

---
<img width="500" height="359" alt="image" src="https://github.com/user-attachments/assets/46d6e774-aebe-44da-8973-c3c1095be3c7" />


## 🔗 HDLBits Link
[hdlbits.fsm_serialdata](https://hdlbits.01xz.net/wiki/Fsm_serialdata)

---

## 📌 Concept Insight

This FSM builds upon the previous serial receiver by including a datapath to output the received byte. When the FSM recognizes a valid frame (start bit, 8 data bits, stop bit), the byte is shifted in LSB-first and displayed on the `out_byte` line when `done` goes high.

---

## 🧪 Test Case Example

### ✅ Correct Frame
```
Idle  Start  Data                      Stop
 1      0     1 0 0 1 0 1 1 0 (0x4B)     1
```
- `out_byte` = 8'b01101001 (0x4B)
- `done` = 1

### ✅ Next Frame
```
Idle  Start  Data                      Stop
 1      0     0 1 1 0 0 0 1 1 (0x62)     1
```
- `out_byte` = 8'b01000011 (0x62)
- `done` = 1

---

## 📁 GitHub Solution Link
[View Solution](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.18%20Serial%20receiver%20and%20datapath/fsm_serialdata.v)
