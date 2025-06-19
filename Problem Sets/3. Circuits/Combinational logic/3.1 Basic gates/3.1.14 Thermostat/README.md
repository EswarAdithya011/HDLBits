## Thermostat – Heating, Cooling, and Fan Control Logic

This circuit simulates the logic inside a home thermostat system that controls heating, cooling, and airflow based on temperature conditions and user input.

---

### 🧠 Concept Insight  
The thermostat has:
- **Two modes**:
  - `mode = 1`: Heating mode
  - `mode = 0`: Cooling mode
- **Control inputs**:
  - `too_cold`: Temperature below threshold
  - `too_hot`: Temperature above threshold
  - `fan_on`: User forces fan to be on

The logic must:
- **Turn on heater** when `mode = 1` and `too_cold = 1`
- **Turn on AC** when `mode = 0` and `too_hot = 1`
- **Turn on fan** if either heater or AC is on, or if `fan_on = 1`

---

### 📘 Problem Statement  
- **Inputs**:  
  - `too_cold`, `too_hot`, `fan_on`, `mode`
- **Outputs**:  
  - `heater`, `aircon`, `fan`

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Thermostat)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.2%20Combinational%20Logic/Thermostat.v)

<img width="800" alt="{860CE581-0A0F-40F0-A1B3-286CB769AFC9}" src="https://github.com/user-attachments/assets/2baebb3e-d709-4d08-97c6-dcc250ae7028" />

---

### 🛠 Design Note  
This problem emphasizes **mode-dependent activation** and **priority-based output control**. It mirrors embedded control systems in HVAC applications, showcasing how multiple conditions control shared hardware components.
