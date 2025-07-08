## Count_clock → `shift4` – 12-Hour Digital Clock with AM/PM Toggle

Design a **12-hour digital clock** in Verilog with proper AM/PM tracking. The clock should:
- Reset to **12:00:00 AM** on `reset`
- Count seconds, minutes, and hours in **BCD**
- Roll over properly from 12 to 1 after 12:59:59
- Toggle `pm` when 11:59:59 transitions to 12:00:00

---

### 🧠 Concept Insight
- **BCD Format**:
  - Each digit (0–9) is represented using 4 bits
  - `hh`, `mm`, and `ss` are each **2 BCD digits**: e.g., `hh = {tens, ones}`

- **Clock Operation**:
  - `ss` → seconds: range `00–59`
  - `mm` → minutes: range `00–59`
  - `hh` → hours: range `01–12` (no 00!)
  - `pm` toggles when `hh = 12`, `mm = 59`, `ss = 59`, and the next second rolls over

---

### 📘 Problem Statement
- **Inputs**:
  - `clk`: Clock input
  - `reset`: Synchronous active-high reset
  - `ena`: Pulse for 1Hz enable (used to increment time)

- **Outputs**:
  - `pm`: 1 = PM, 0 = AM
  - `hh`: Hours in BCD (2 digits, 01 to 12)
  - `mm`: Minutes in BCD (2 digits, 00 to 59)
  - `ss`: Seconds in BCD (2 digits, 00 to 59)

![image](https://github.com/user-attachments/assets/8056d1a5-a472-41c3-9bc5-5df6a92f26d3)

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Count_clock)

---

### ✅ Solution
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.6%20Counters/3.6.8%2012-hour%20clock/count_clock.v)

![image](https://github.com/user-attachments/assets/33ef2246-0dbf-4299-b5d5-c56219ccda29)

![image](https://github.com/user-attachments/assets/dd3d5eda-6aa9-446b-8b28-27aa41fbfcab)

![image](https://github.com/user-attachments/assets/ef7dfa09-3175-41a6-bbe0-5bf68758382f)

![image](https://github.com/user-attachments/assets/b15cc4cc-c5d2-4df4-84b5-dbab9daf2b9e)

---

### 🛠 Design Note

1. **Counter Logic**:
   - `ss` and `mm` are standard BCD counters:  
     - 60 = 6 × 10 = max = `mm == 8'h59`
   - `hh`:
     - Starts from `12`, then counts: `1 → 2 → ... → 11 → 12 → 1`  
     - No "00", reset always sets hours to `12` directly

2. **AM/PM Toggle Logic**:
   - `pm` toggles when current time is `11:59:59` and `ena` triggers
   - Logic:
     ```verilog
     if (hh == 8'h11 && mm == 8'h59 && ss == 8'h59)
         pm <= ~pm;
     ```

3. **Reset Handling**:
   - When `reset = 1`:
     - `hh <= 8'h12; mm <= 8'h00; ss <= 8'h00; pm <= 0;`

4. **Enable Controlled Increments**:
   - Only update time registers when `ena == 1`
   - Handle all BCD rolls:
     - `ss_ones == 9`: → reset to 0, increment `ss_tens`
     - `ss == 59`: → reset to 0, increment `mm`
     - `mm == 59`: → reset to 0, increment `hh`
     - `hh == 12`: → reset to 1

---

### 🔄 Timing Example

| Time | Next |
|------|------|
| 11:59:59 AM | 12:00:00 PM |
| 12:59:59 PM | 01:00:00 PM |
| 12:00:00 PM | 01:00:01 PM |
| 01:59:59 PM | 02:00:00 PM |

This emulates real-world wall-clock behavior with BCD registers and correctly toggles AM/PM.
