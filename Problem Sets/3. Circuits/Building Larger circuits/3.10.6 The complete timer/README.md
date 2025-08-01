## Problem Title: Fancy Timer with Serial Pattern Detection and Delay Counter  
### Problem Statement:  
Design a complex finite state machine (FSM) that behaves as a **fancy timer**. The timer starts upon detecting a specific 4-bit pattern (`1101`) on a serial `data` input. Once triggered, the circuit performs the following steps sequentially:

1. **Detect sequence 1101** to begin.
2. **Shift in 4 additional bits**, MSB first, to form a 4-bit delay value (`delay[3:0]`).
3. **Count for (delay + 1) * 1000 clock cycles**, decrementing the `count[3:0]` value every 1000 cycles.
4. **Assert `done` signal** for 1 cycle when the timer ends.
5. **Wait for user acknowledgment (`ack`)** to restart the FSM and search for the next 1101 pattern.

**Specifications:**
- On reset, the FSM should return to the initial search state.
- `count[3:0]` shows the current remaining time. This decreases every 1000 clock cycles and is a don't-care when not counting.
- `counting` output is 1 during the countdown phase.
- Once `done` is asserted, the FSM pauses until `ack = 1`.

### Concept Insight:
- This design combines the following components:
  - Sequence detector FSM (for `1101`)
  - 4-bit shift register (to collect `delay[3:0]`)
  - Countdown logic using a 1000-cycle timer and delay counter
  - FSM control unit to transition between states: Search → Shift → Countdown → Done → Acknowledge
- The final count duration = (`delay` + 1) * 1000 cycles.
- Overlapping sequences and multiple timer cycles must be handled cleanly.

### HDLBits Link:  
[HDLBits - exams/review2015_fancytimer](https://hdlbits.01xz.net/wiki/Exams/review2015_fancytimer)

### GitHub Solution Link:  
[GitHub - HDLBits Solutions Repository](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Building%20Larger%20circuits/3.10.6%20The%20complete%20timer/review2015_fancytimer.v)

### Design Note:
- The timer functions as a hybrid of state machine and datapath control:
  - FSM to control operation mode
  - Shift register to latch delay input
  - Internal counter to track 1000-cycle intervals
  - Decrementer to reduce `count` at each 1000-cycle point
- Proper synchronization between FSM transitions and counter control is critical.
- The `done` signal and `ack` handshake enable user-controlled restarts, adding robustness to the system's behavior for practical applications like timing control in serial input-driven designs.
