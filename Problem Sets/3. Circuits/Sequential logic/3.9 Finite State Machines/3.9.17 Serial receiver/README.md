# FSM for Serial Byte Reception with Start and Stop Bits

---

## Problem Statement

Design a **finite state machine (FSM)** to detect valid serial data frames in a continuous bit stream using the following protocol:

### Frame Format:
- **Start bit**: 1 bit, always `0`
- **Data bits**: 8 bits (LSB to MSB)
- **Stop bit**: 1 bit, always `1`
- **Idle line**: Logic `1`

---

## Input & Output

### Inputs:
- `clk` – Clock
- `in` – Serial input bit stream
- `reset` – Synchronous reset

### Output:
- `done` – Asserted `1` for **one clock cycle** after successfully receiving a full frame

---

## Frame Conditions

1. FSM starts in **IDLE** state, waiting for a `0` (start bit).
2. Then, FSM captures **8 data bits** one per clock.
3. After 8 bits, it expects the **stop bit (`1`)**.
4. If stop bit is `1`, assert `done = 1` for 1 cycle.
5. If stop bit is incorrect (`0`), **discard frame** and wait until the line returns to `1` (idle) before rechecking for a new start.

---

## FSM States

| State       | Description                            |
|-------------|----------------------------------------|
| IDLE        | Waiting for start bit (`0`)            |
| START       | Start bit detected                     |
| DATA_0-7    | Receiving 8 data bits (counting 0–7)   |
| STOP        | Check for stop bit (`1`)               |
| ERROR       | Stop bit was incorrect; wait for `in=1`|

<img width="500" height="607" alt="image" src="https://github.com/user-attachments/assets/d50051ec-2fe5-4a1b-9701-82e5be761dcc" />

---

## HDLBits Reference

- **Problem:** [FSM - Serial Data](https://hdlbits.01xz.net/wiki/Fsm_serialdata)
- **Solution:** [FSM_Serial Solution on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.17%20Serial%20receiver/fsm_serial.v)

---

## Design Notes

- FSM must **count bits** precisely and only assert `done` for valid sequences.
- Resilience is required: if the stop bit is missing, the whole sequence is invalid.
- FSM **resynchronizes** after an error by scanning for idle (`1`) before retrying.

---

## Timing Diagram – Valid Case

```plaintext
clk:   ─┐┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐┌─┐
in :   1 0 D D D D D D D D 1 1 0 D D D D D ...
done:       0 0 0 0 0 0 0 0 1 0 0 ...
             └────── data ──────┘ └done
