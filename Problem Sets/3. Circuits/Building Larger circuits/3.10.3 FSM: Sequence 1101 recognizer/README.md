## Problem Title: FSM to Detect Sequence "1101" and Trigger Permanent Output  
### Problem Statement:  
Design a finite state machine (FSM) that scans an input bit stream `data` and detects the sequence **1101**.  
Once this sequence is detected, the output signal `start_shifting` must be asserted to 1 and **remain high forever**, until a synchronous `reset` is triggered.  
This FSM is part of a larger system and will be extended in later exercises.

**Behavior Overview:**
- Reset is synchronous and sets the FSM to its initial state.
- The FSM must detect overlapping sequences.
- Once the sequence is matched, the FSM transitions to a “final” state that permanently holds `start_shifting = 1`.

### Concept Insight:
- A Mealy FSM can be used to recognize sequences efficiently.
- This FSM requires 5 states:
  - **S0**: Initial state
  - **S1**: Detected `1`
  - **S2**: Detected `11`
  - **S3**: Detected `110`
  - **S4**: Detected full sequence `1101`, latch `start_shifting = 1`
- After reaching **S4**, the FSM remains there indefinitely.

<img width="500" height="214" alt="image" src="https://github.com/user-attachments/assets/1a816ed3-80da-47d3-b7c1-4ec0533eecd0" />

### HDLBits Link:  
[HDLBits - exams/review2015_fsmseq](https://hdlbits.01xz.net/wiki/Exams/review2015_fsmseq)

### GitHub Solution Link:  
[GitHub - HDLBits Solutions Repository](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Building%20Larger%20circuits/3.10.3%20FSM%3A%20Sequence%201101%20recognizer/review2015_fsmseq.v)

<img width="500" height="525" alt="image" src="https://github.com/user-attachments/assets/6f6074b2-ee3a-4cb9-81d7-edfd36858696" />

### Design Note:
- This FSM is an initialization trigger for a shift operation in a larger system.
- Once the sequence `1101` is detected, the system transitions to a control phase where shifting logic is enabled.
- Proper FSM design and state retention logic are crucial for sequential signal processing in larger FSM architectures.
