## Vector2 – Reversing Byte Order in a 32-bit Vector

A 32-bit vector can be viewed as containing 4 bytes (bits `[31:24]`, `[23:16]`, `[15:8]`, `[7:0]`). Build a circuit that reverses the byte ordering of the 4-byte word.

---

### Problem Statement  
Given a 32-bit input vector:

- `Aaaaaaaa Bbbbbbbb Cccccccc Dddddddd`

Output the bytes in reversed order:

- `Dddddddd Cccccccc Bbbbbbbb Aaaaaaaa`

This operation is useful for converting between different endianness formats, such as from little-endian (x86) to big-endian (network protocols).

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Vector2)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.2%20Vectors/2.2.2%20Vectors%20in%20more%20detail/Vector2.v)

<img width="641" alt="{37A80EE7-7063-492C-BF2F-C8EFCA33F369}" src="https://github.com/user-attachments/assets/158260db-9b17-4862-895a-72c86d761975" />

🛠 *Design Note:*  
Using the part-select operator `[high_bit:low_bit]` allows precise access and assignment of individual bytes within a 32-bit vector. Reversing byte order by swapping these byte slices is a fundamental operation in digital systems that handle multiple endianness standards.
