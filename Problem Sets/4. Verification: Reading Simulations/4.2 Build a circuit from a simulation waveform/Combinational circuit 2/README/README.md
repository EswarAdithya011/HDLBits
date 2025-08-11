### Problem Title: Simulation-Based Circuit Identification – Circuit 2

**Problem Statement**  
You are given a combinational circuit with unknown internal logic. The task is to determine its functionality by analyzing the provided simulation waveforms. Based on the observed input-output relationships, implement a Verilog module that replicates the exact behavior of the circuit.

**Concept Insight**  
This problem focuses on waveform-based reverse engineering. By examining patterns between `a`, `b`, `c`, `d`, and `q`, the underlying logic expression can be deduced without direct access to the original design.

**HDLBits Link:**  
[Link](https://hdlbits.01xz.net/wiki/Sim/circuit2)

<img width="500" height="363" alt="image" src="https://github.com/user-attachments/assets/2d93e8e3-3495-4682-a523-4f2abfb6cb2c" />

**GitHub Solution Link:**  
[Link](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/4.%20Verification%3A%20Reading%20Simulations/4.2%20Build%20a%20circuit%20from%20a%20simulation%20waveform/Combinational%20circuit%202/circuit2.v)

<img width="500" height="493" alt="image" src="https://github.com/user-attachments/assets/7f61ff32-f50a-4e18-a5aa-412b1587d199" />


**Design Note**  
The logic equation is derived directly from the waveform truth table analysis, ensuring the implemented module perfectly replicates the intended combinational behavior.
