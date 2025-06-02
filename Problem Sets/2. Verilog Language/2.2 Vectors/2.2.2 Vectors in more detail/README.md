## Vector – Grouping Related Signals Using Vectors

Vectors group related signals under a single name, simplifying manipulation and improving code readability. For example, `wire [7:0] w;` declares an 8-bit vector equivalent to eight individual wires.

---

### Problem Statement  
Design a combinational circuit that takes a 16-bit input half-word `[15:0]` and splits it into two separate bytes:

- Lower byte: bits `[7:0]`
- Upper byte: bits `[15:8]`

The circuit should output these two bytes separately.

📘 *Concept Insight:*  
Vectors in Verilog are declared as `type [upper:lower] vector_name;`, where `type` is usually `wire` or `reg`. The direction of the index (endianness) must remain consistent throughout the design. Accessing parts of vectors uses the part-select operator `[high_bit:low_bit]`. Understanding packed vs unpacked arrays, implicit nets, and correct vector slicing is essential to avoid bugs and ensure clear, modular code.

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vector)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.5%20Vector/Vector.v)

🛠 *Design Note:*  
Proper use of vectors enables efficient data handling and signal grouping. Splitting vectors using part-select operators illustrates practical bit manipulation, common in digital design and interfacing tasks.

