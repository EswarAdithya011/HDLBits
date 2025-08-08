### Problem Title: Bug Fix - 4-to-1 Multiplexer Using 2-to-1 MUX

**Problem Statement**  
This 4-to-1 multiplexer doesn't work. Fix the bug(s).  
You're provided a bug-free 2-to-1 multiplexer module `mux2`. The task is to build a correct 4-to-1 multiplexer using this module, with inputs `a`, `b`, `c`, `d`, 2-bit select input `sel`, and 8-bit output `out`.

**Concept Insight**  
A 4-to-1 multiplexer can be built hierarchically using three 2-to-1 multiplexers. First level selects between `a`/`b` and `c`/`d` using `sel[0]`, then the final stage selects between those two using `sel[1]`.

**HDLBits Link:**  
[Link](https://hdlbits.01xz.net/wiki/Exams/review2015_bugs_mux4)

**GitHub Solution Link:**  
[Link](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Verification%3A%20Reading%20Simulations/4.1%20Finding%20bugs%20in%20code/4.1.3%20Mux(2)/bugs_mux4.v)

<img width="500" height="548" alt="image" src="https://github.com/user-attachments/assets/afdf17af-14c5-4b13-96ca-2e03eb17fdcf" />

**Design Note**  
Fixed the incorrect mux instantiations and selection logic. Used three instances of the `mux2` module to properly implement the 4:1 multiplexer using hierarchical construction.
