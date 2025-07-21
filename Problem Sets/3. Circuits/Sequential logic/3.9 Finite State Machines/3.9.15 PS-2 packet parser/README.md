# FSM for PS/2 Mouse Byte Stream Synchronization

---

## Problem Statement

Design a **finite state machine (FSM)** to detect and synchronize 3-byte messages from a continuous byte stream following the **PS/2 mouse protocol**.

### Message Characteristics:

- Each message is **3 bytes long**.
- **Only the first byte** of the message has `in[3] = 1`.  
- The remaining two bytes can have `in[3] = 0 or 1`.
- Messages can be misaligned or corrupted — the FSM must **resynchronize**.
- FSM should assert the `done` signal **for one clock cycle only** immediately after receiving a valid 3-byte message.

---

## Input & Output

### Inputs:
- `clk` – Clock
- `reset` – Synchronous reset
- `in[7:0]` – Input byte stream (only `in[3]` is relevant)

### Output:
- `done` – High for 1 cycle after valid 3-byte message is received

---

## Design Logic

The FSM must detect the **start of a message** and **count 3 bytes** while tracking valid boundaries:

### States:

1. **IDLE**  
   Wait for a byte where `in[3] == 1`. Ignore all others.

2. **BYTE_1**  
   First byte received (with `in[3] == 1`). Go to next state.

3. **BYTE_2**  
   Second byte received. Go to next state.

4. **BYTE_3**  
   Third byte received. Assert `done = 1` for one clock cycle. Then reset to IDLE or BYTE_1 based on next input.

> **Important:**  
> - Cannot overlap sequences.  
> - `done` should be **1 for only 1 cycle** after byte 3 is received.

<img width="500" height="792" alt="image" src="https://github.com/user-attachments/assets/464ea2a4-bf84-49dc-867c-44519386e827" />

<img width="500" height="314" alt="image" src="https://github.com/user-attachments/assets/277cfd54-a628-4dee-ae9f-ae13b3e4471e" />

---

## Reference Links

- **Problem on HDLBits:**  
  [FSM - PS2 Data Problem](https://hdlbits.01xz.net/wiki/Fsm_ps2)

- **Solution Code:**  
  [FSM_PS2 Solution on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.15%20PS-2%20packet%20parser/fsm_ps2.v)

---

## Concept Insight

The PS/2 protocol doesn’t provide clear byte boundaries — only the **first byte's bit[3] = 1** is reliable. This FSM solves that problem by:

- **Resynchronizing on errors**, ensuring no misalignment.
- **Avoiding overlapping matches**, unlike simple 1xx pattern detectors.
- **Using four distinct states** to precisely control transitions and the `done` signal.
