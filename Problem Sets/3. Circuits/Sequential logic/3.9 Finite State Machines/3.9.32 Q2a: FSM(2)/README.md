### 🧠 Problem Title: FSM - 3-Device Arbiter  
---

### 📌 Problem Statement  
This FSM acts as an **arbiter circuit**, controlling access to a shared resource between **three devices**. Each device sends a request through signal `r[i] = 1`, where `i ∈ {1,2,3}`. The FSM grants access using signal `g[i] = 1`. Devices are prioritized with device 1 having the highest and device 3 the lowest. The FSM remains in **state A** as long as there are no requests. When a request is received, it transitions to the corresponding grant state based on priority and stays there as long as that device keeps requesting.

- If multiple devices request at the same time, the **device with the highest priority gets the grant**.
- Once a device is granted, it retains the grant as long as it holds the request (`r[i] = 1`).
- FSM returns to state A when no device requests.

---

### 🧮 Concept Insight  
- **FSM type**: Mealy/Moore-like logic for priority-based grant.
- **Priority Encoding**: Handled in state transition using nested conditions.
- **Grant Output**: Depends on state → `g[i] = 1` if in grant state for device `i`.
- **Design Pattern**: Synchronous reset, state register + next state logic, output logic separated.

<img width="300" height="741" alt="image" src="https://github.com/user-attachments/assets/4ce91a15-6fe6-42a3-be8d-62a5e1b173b2" />

---

### 🔗 HDLBits Link  
[HDLBits – exams/2013_q2afsm](https://hdlbits.01xz.net/wiki/Exams/2013_q2afsm)

---

### 💻 GitHub Solution Link  
[GitHub – FSM: 3-Device Arbiter (exams/2013_q2afsm)](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/3.%20Circuits/Sequential%20logic/3.9%20Finite%20State%20Machines/3.9.32%20Q2a%3A%20FSM(2)/2013_q2afsm.v)

<img width="500" height="447" alt="image" src="https://github.com/user-attachments/assets/d783729d-5ba0-4c30-be1e-02183daf9d7b" />

---

### 📊 Design Note  
- **States Used**:  
  - A: Idle (no request)  
  - B: Grant to device 1  
  - C: Grant to device 2  
  - D: Grant to device 3  

- **State Transition**:  
  - A → B if `r[1]`  
  - A → C if `~r[1] & r[2]`  
  - A → D if `~r[1] & ~r[2] & r[3]`  
  - Grant states loop on self while request held  
  - Else return to A  

- **Grant Output Mapping**:  
  ```verilog
  assign g = { (state == D), (state == C), (state == B) };
