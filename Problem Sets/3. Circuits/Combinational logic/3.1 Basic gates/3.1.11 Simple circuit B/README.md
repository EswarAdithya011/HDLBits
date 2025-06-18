## mt2015_q4b – XNOR Gate Implementation

This task is derived from the 2015 midterm, question 4, and is based on analyzing and replicating a waveform behavior that matches an XNOR gate.

---

### 🧠 Concept Insight  
The XNOR (Exclusive-NOR) gate performs the logic operation:
- `z = ~(x ^ y)`  
- It outputs 1 when both inputs are equal (either 0-0 or 1-1).

XNOR gates are frequently used in equality comparison and parity checking circuits.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `x`, `y`: Single-bit inputs  
- **Output**:  
  - `z = x ~^ y` (XNOR of `x` and `y`)  

<img width="529" alt="{BF62E2E7-0C32-4B78-968C-32AF00352ADA}" src="https://github.com/user-attachments/assets/674ca202-07a7-4844-bc0b-3e4a88dfd636" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Mt2015_q4b)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.1%20Gates/Mt2015_q4b.v)

<img width="500" alt="{AB81B990-286D-429C-9DDB-3BCF6C22C974}" src="https://github.com/user-attachments/assets/47b5c268-395a-4e4d-91aa-5daa88dceccb" />

---

### 🛠 Design Note  
This exercise highlights how specific logic gates correspond to observable patterns in waveforms. Recognizing this allows reverse-engineering from timing diagrams during debugging or analysis.
