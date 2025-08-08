### Problem Title: Bug Fix – Keyboard Scancode Decoder Using Case Statement

**Problem Statement**  
This module is designed to recognize 8-bit keyboard scancodes for the numeric keys `0` through `9`. It outputs a 4-bit value `out` indicating which key was detected and a `valid` signal that should be `1` only when the code matches a valid numeric key. The original design has bugs that prevent correct recognition and always sets `valid = 1`. Fix the bug(s) so that the module works as intended.

**Concept Insight**  
Keyboard scancodes for keys `0` to `9` range from `8'h45` to `8'h4D`. The fix involves mapping these scancodes correctly using a `case` statement and setting `valid = 0` by default. It must only be set to `1` for matched cases.

**HDLBits Link:**  
[Link](https://hdlbits.01xz.net/wiki/Bugs_case)

**GitHub Solution Link:**  
[Link](https://github.com/KorrapoluEswarAdithya/HDLBits-Solutions/blob/main/Bug-Fix/bugs_case.v)

<img width="500" height="457" alt="image" src="https://github.com/user-attachments/assets/bbce719f-c319-451a-9add-3b0ccbec0f8a" />

**Design Note**  
Corrected the logic by assigning `valid = 0` initially and enabling it only inside matched cases. Also ensured the `out` value corresponds to the correct digit.
