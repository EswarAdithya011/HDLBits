## Countbcd → `count_clock` – 4-Digit BCD Counter with Cascade Enable

Design a **4-digit decimal counter**, where each digit is stored in **BCD format (4 bits)**.  
- The counter goes from `0000` to `9999`, then rolls over.
- Each digit increments when the previous digit rolls over from 9 to 0.
- This structure emulates a standard digital clock counter or odometer.

---

### 🧠 Concept Insight  
- BCD (Binary Coded Decimal): Each digit ranges from 0 to 9 (0000 to 1001).
- **q[3:0]** – ones digit  
- **q[7:4]** – tens digit  
- **q[11:8]** – hundreds digit  
- **q[15:12]** – thousands digit  
- The `ena` signals control when each upper digit should increment.

---

### 📘 Problem Statement  
- **Inputs**:
  - `clk`: Clock signal
  - `reset`: Synchronous active-high reset
- **Outputs**:
  - `ena[3:1]`: Enable lines for digits 1 (tens), 2 (hundreds), 3 (thousands)
  - `q[15:0]`: Output counter value in BCD (4 digits)

![image](https://github.com/user-attachments/assets/e7e3e115-18b3-4bed-a22c-dd1ada89f487)

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Count_clock)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.6%20Counters/3.6.7%204-digit%20decimal%20counter/countbcd.v)

![image](https://github.com/user-attachments/assets/7213c95b-ab6c-4cf1-90e3-ff9dd5e8519a)

---

### 🛠 Design Note  
- **Enable Logic**:
  - `ena[1] = (q[3:0] == 4'd9)`
  - `ena[2] = ena[1] & (q[7:4] == 4'd9)`
  - `ena[3] = ena[2] & (q[11:8] == 4'd9)`

- **Each digit** resets to `4'd0` on `reset`, else increments if `ena[i]` is high and digit == 9, else `+1`.

- Uses synchronous logic for precise control over when digits increment and when to reset the entire 4-digit register.

This structure closely mimics real-world digital clocks or counters used in VLSI or embedded applications.
