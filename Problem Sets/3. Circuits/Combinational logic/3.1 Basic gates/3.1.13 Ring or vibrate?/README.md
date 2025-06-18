## Ringer – Conditional Output Control for Call Notification

This problem simulates a decision logic used in cellphones to control call notifications based on user mode preference (vibrate or ring). The design ensures **mutual exclusivity**: only one output is high at any time when a call comes in.

---

### 🧠 Concept Insight  
The two control signals are:
- `ring`: Indicates whether there's an incoming call.
- `vibrate_mode`: User-selected mode for silent notification.

The output behavior must be:
- **If `ring` is 1 and `vibrate_mode` is 1 → motor = 1, ringer = 0**
- **If `ring` is 1 and `vibrate_mode` is 0 → ringer = 1, motor = 0**
- **If `ring` is 0 → both motor and ringer = 0**

This ensures the device either rings **or** vibrates when there's a call—never both.

---

### 📘 Problem Statement  
- **Inputs**:  
  - `ring`: Incoming call indicator  
  - `vibrate_mode`: User mode preference  
- **Outputs**:  
  - `ringer`: Controls audio ringing  
  - `motor`: Controls vibration motor  

<img width="546" alt="{69A7E27D-862A-4A3B-B6A5-599035D7214E}" src="https://github.com/user-attachments/assets/f5982e3b-cb50-4e3d-ab72-6ad0353265df" />

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Ringer)

---

### ✅ Solution  
📄 [View Solution Code on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Circuits/2.2%20Combinational%20Logic/Ringer.v)

<img width="501" alt="{9EAFA887-4458-4100-8EF9-C95EF5EDA94D}" src="https://github.com/user-attachments/assets/eff854c2-26d6-4109-8a0c-b301332eda25" />

---

### 🛠 Design Note  
This task reinforces the principle of **mutually exclusive combinational logic**, often encountered in mode-selective circuits in embedded systems. Using only `assign` statements showcases declarative thinking required for synthesizable RTL logic.
