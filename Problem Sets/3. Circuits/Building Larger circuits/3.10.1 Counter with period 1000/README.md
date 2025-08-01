## Problem Title: 3-Digit Synchronous Modulo-1000 Counter  
### Problem Statement:  
Build a counter that counts from 0 to 999 (inclusive) with a period of 1000 cycles. The reset input is **synchronous**, and when asserted, the counter should reset to 0. The output `q` is a 10-bit binary representation of the current count.

| clk | reset | q (decimal) |
|-----|--------|-------------|
| ↑   | 0      | 0           |
| ↑   | 0      | 1           |
| ... | ...    | ...         |
| ↑   | 0      | 998         |
| ↑   | 0      | 999         |
| ↑   | 0      | 0           |
| ↑   | 1      | 0           |

### Concept Insight:
- A 10-bit synchronous counter is needed because \(2^{10} = 1024 > 1000\).
- The counter should wrap around from 999 to 0.
- Reset must override counting only **on the rising edge** of the clock.

<img width="500" height="149" alt="image" src="https://github.com/user-attachments/assets/7d29bdb9-90f7-4ced-9a96-bfc0a2f840dc" />

### HDLBits Link:  
[HDLBits - exams/review2015_count1k](https://hdlbits.01xz.net/wiki/Exams/review2015_count1k)

### GitHub Solution Link:  
[GitHub - HDLBits Solutions Repository](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Building%20Larger%20circuits/3.10.1%20Counter%20with%20period%201000/review2015_count1k.v)

<img width="500" height="469" alt="image" src="https://github.com/user-attachments/assets/bd9005d8-fad1-41fd-983e-5bae88cfe88d" />

<img width="500" height="473" alt="image" src="https://github.com/user-attachments/assets/c4309cf4-6537-4727-a536-2f346f8680e6" />

### Design Note:
- Use a register `q` of size [9:0].
- On every clock edge, check if reset is high — if so, assign `q = 0`.
- Otherwise, increment `q`. If `q` reaches 999, reset it to 0.
- This is a basic FSM with one state variable and synchronous reset.
