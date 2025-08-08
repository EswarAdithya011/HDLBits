### Problem Title: Bug Fix - 2-to-1 8-bit Multiplexer

**Problem Statement**  
This 8-bit wide 2-to-1 multiplexer doesn't work. Fix the bug(s).  
You are provided with a module that is supposed to implement a standard 8-bit 2-to-1 multiplexer. The module has a select input `sel`, two 8-bit inputs `a` and `b`, and one 8-bit output `out`. Identify and fix the bug in the given Verilog code so that the module behaves as expected.

**Concept Insight**  
This is a basic example of a structural design bug. A correct 2-to-1 multiplexer outputs `a` when `sel` is 0, and `b` when `sel` is 1.  

**HDLBits Link:**  
[Link](https://hdlbits.01xz.net/wiki/Bugs_mux2)

**GitHub Solution Link:**  
[Link](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Verification%3A%20Reading%20Simulations/4.1%20Finding%20bugs%20in%20code/4.1.1%20Mux/bugs_mux2.v)

<img width="500" height="456" alt="image" src="https://github.com/user-attachments/assets/d328b79c-de0e-4183-ac2f-297ff351ca6c" />

**Design Note**  
Corrected the incorrect logic used for multiplexing. Used conditional operator to properly switch between inputs `a` and `b` based on `sel`. This approach guarantees correct operation under all select input conditions for an 8-bit wide data path.
