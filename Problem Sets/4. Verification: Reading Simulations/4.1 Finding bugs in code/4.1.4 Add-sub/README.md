### Problem Title: Bug Fix – 8-bit Adder/Subtractor with Zero Flag

**Problem Statement**  
This 8-bit adder-subtractor with a zero detection output is not functioning correctly. The task is to fix the bug(s) in the design. The module must perform `out = a + b` when `do_sub = 0` and `out = a - b` when `do_sub = 1`. It must also set `result_is_zero = 1` if the result is zero.

**Concept Insight**  
To perform subtraction using addition logic, the 2’s complement of `b` is added when `do_sub = 1`. This requires XORing `b` with `do_sub` and adding `do_sub` as the carry-in. The result is then checked to assert the `result_is_zero` flag.

**HDLBits Link:**  
[Link](https://hdlbits.01xz.net/wiki/Exams/review2015_bugs_addsubz)

**GitHub Solution Link:**  
[Link](https://github.com/KorrapoluEswarAdithya/HDLBits-Solutions/blob/main/Bug-Fix/bugs_addsubz.v)

**Design Note**  
Fixed the bug by correctly applying 2’s complement logic for subtraction using XOR and conditional carry-in. Also used proper combinational logic for the zero flag.
