## lfsr5 → `mt2015_lfsr` – 5-bit Galois LFSR with Taps at Bit 5 and Bit 3

Design a **5-bit Galois Linear Feedback Shift Register (LFSR)** with the following characteristics:
- **Galois LFSR topology** (tap-based feedback applied during the shift)
- **Taps at bit positions 5 and 3**
- **Maximal-length** LFSR: cycles through all 2⁵ − 1 = 31 non-zero states
- **Synchronous reset** to state `5'b00001`

---

### 🧠 Concept Insight

- A **Galois LFSR** works by shifting bits and injecting feedback selectively via XOR taps.
- **Feedback bit** is the current LSB (bit 0).
- **Tapped bits** (positions 5 and 3) get XORed with the feedback.
- Other bits just shift normally.

---

### 📘 Problem Statement

- **Inputs**:
  - `clk`: Clock
  - `reset`: Active-high synchronous reset

- **Output**:
  - `[4:0] q`: Current content of the LFSR

<img width="650" height="171" alt="image" src="https://github.com/user-attachments/assets/33c646b6-a10c-45c7-8d23-424291b8db26" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mt2015_lfsr)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.7%20Shift%20Registers/3.7.4%205-bit%20LFSR/lfsr5.v)

<img width="650" height="429" alt="image" src="https://github.com/user-attachments/assets/b7c13e69-21e5-412b-a662-823d343d2b7f" />

---

### 🛠 Design Note

Given a 5-bit register `q[4:0]`, with:
- **Tap at q[2]** (position 3)
- **Tap at q[4]** (position 5)
- **Feedback bit** = q[0]
