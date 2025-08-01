## Problem Title: FSM Timer Controller  
### Problem Statement:  
Design a finite-state machine (FSM) that acts as a timer controller with the following sequence of operations:

1. **Start Condition:** Begins operation upon detecting the bit sequence `1101` on the `data` input.
2. **Shift Phase:** After detecting `1101`, assert `shift_ena` for **exactly 4 cycles** to load delay duration bits.
3. **Counting Phase:** After shifting is complete, assert `counting` while waiting for `done_counting` to be high.
4. **Done Notification:** When `done_counting` is received, assert `done` to notify completion.
5. **Acknowledge Phase:** Remain in `done` state until user asserts `ack`. Then return to search for the next `1101`.

The FSM must reset into a state where it begins looking for `1101`.

### Concept Insight:
- Integrates multiple FSM segments: sequence detector, controlled shifting, waiting for an external counter, and user acknowledgment.
- FSM States:
  - `S_IDLE`: Search for 1101 sequence.
  - `S_SHIFT1` to `S_SHIFT4`: Enable `shift_ena` for 4 cycles.
  - `S_WAIT`: Assert `counting`, wait for `done_counting`.
  - `S_DONE`: Assert `done`, wait for `ack`.

<img width="500" height="358" alt="image" src="https://github.com/user-attachments/assets/d468c2f7-5b3d-4c9c-b798-eacca665d7b0" />

<img width="500" height="281" alt="image" src="https://github.com/user-attachments/assets/dbe64595-4082-4a4e-afe1-4ffd8670b653" />

### HDLBits Link:  
[HDLBits - exams/review2015_fsm](https://hdlbits.01xz.net/wiki/Exams/review2015_fsm)

### GitHub Solution Link:  
[GitHub - HDLBits FSM Timer Controller](https://github.com/eswardi/HDLBits_Solutions/blob/main/FSM/exams_review2015_fsm.v)

### Design Note:
- This FSM consolidates earlier modules: the sequence recognizer (`fsmseq`) and the 4-cycle shift enabler (`fsmshift`).
- Critical in timing control for serial-to-parallel systems where data defines a future duration of activity.
- This design introduces proper control signals (`shift_ena`, `counting`, `done`) and manages their sequencing robustly.
- State transitions are synchronous and depend both on internal timers and external acknowledgment.
