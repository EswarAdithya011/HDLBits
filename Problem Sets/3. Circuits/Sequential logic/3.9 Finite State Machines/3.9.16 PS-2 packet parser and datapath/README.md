# FSM for PS/2 Mouse Packet Detection with Byte Capture

---

## Problem Title
FSM with Datapath: PS/2 Byte Stream Packet Parser

---

## Problem Statement

Design a **finite state machine (FSM)** combined with a **datapath** to process and synchronize **3-byte messages** from a PS/2 mouse byte stream.

### Requirements:

- Use the FSM from the previous `fsm_ps2` problem to detect **valid 3-byte sequences**.
- Extend the FSM to **store the three bytes** in a 24-bit output `out_bytes[23:0]`.
- **Output format:**  
  - `out_bytes[23:16]` = first byte  
  - `out_bytes[15:8]`  = second byte  
  - `out_bytes[7:0]`   = third byte
- Assert the `done` signal for **exactly one clock cycle** **after** all three bytes have been received.
- `out_bytes` must be valid **only** when `done == 1`. Otherwise, its value can be ignored.

---

## Input and Output Ports

### Inputs:
- `clk` : Clock signal
- `reset` : Synchronous reset
- `in[7:0]` : Input byte stream (only `in[3]` is useful for synchronization)

### Outputs:
- `done` : High for one clock cycle after a valid 3-byte packet
- `out_bytes[23:0]` : The 3-byte packet, valid when `done == 1`

---

## Example Input/Output

| Cycle | `in`  | `in[3]` | `done` | `out_bytes` |
|-------|-------|---------|--------|-------------|
| 0     | 08    | 1       | 0      | XXXXXXXX    |
| 1     | 01    | 0       | 0      | XXXXXXXX    |
| 2     | 02    | 0       | 1      | 080102      |
| 3     | 38    | 1       | 0      | XXXXXXXX    |
| 4     | ff    | 0       | 0      | XXXXXXXX    |
| 5     | fe    | 0       | 1      | 38fffe      |

---

## Design Concept

### FSM States:

| State     | Meaning                              |
|-----------|--------------------------------------|
| IDLE      | Wait for start byte (`in[3] == 1`)   |
| BYTE_1    | First byte received                  |
| BYTE_2    | Second byte received                 |
| BYTE_3    | Third byte received, assert `done=1` |

### Transitions:

- **IDLE → BYTE_1**: if `in[3] == 1`
- **BYTE_1 → BYTE_2**: always
- **BYTE_2 → BYTE_3**: always
- **BYTE_3 → IDLE or BYTE_1**:  
  - If `in[3] == 1` → BYTE_1 (start of new packet)  
  - Else → IDLE

### Datapath:

- **Register** byte values:
  - On BYTE_1: store `in` to `byte1`
  - On BYTE_2: store `in` to `byte2`
  - On BYTE_3: store `in` to `byte3`, then concatenate and output

<img width="500" height="345" alt="image" src="https://github.com/user-attachments/assets/19d0eef7-17fd-4fe2-a81b-66376b36e5a3" />

---

## HDLBits Reference

- **Problem Link:**  
  [FSM - PS2 Data with OutBytes](https://hdlbits.01xz.net/wiki/Fsm_ps2data)

- **GitHub Solution:**  
  [FSM_PS2 with Output Solution](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.16%20PS-2%20packet%20parser%20and%20datapath/fsm_ps2data.v)

---

## Design Note

This design exercises key skills:

- FSM control logic for stream alignment
- Stateful synchronization
- Data capture with precise timing
- Multi-byte parallel output from a serial stream

It mimics real-world protocol parsers, essential in USB, UART, and PS/2 interfaces. Ensuring correct `done` assertion and output timing is crucial for reliability in protocol decoding.
