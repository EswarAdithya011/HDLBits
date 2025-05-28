# Step One – Getting Started

Getting started in digital logic design can be overwhelming at first because you need to learn new concepts, a new Hardware Description Language (e.g., Verilog), several new software tools, and often an FPGA board—all at once. This task provides a simple way to practice designing and debugging basic circuits efficiently.

Designing a circuit typically involves the following steps:
- Writing HDL (Verilog) code
- Compiling the code to produce a circuit
- Simulating the circuit and resolving any issues

---

## Contents
1. Writing Code  
2. Compiling (Logic Synthesis)  
3. Simulation  
4. Final Status  
5. Problem Statement  

---

## Writing Code
The best way to start is by using a code editor. For this task, most of the boilerplate was pre-filled. The remaining logic was completed based on the circuit’s functionality.

---

## Compiling (Logic Synthesis)
The code is compiled using synthesis tools that convert HDL into a digital logic circuit. These tools generate messages and warnings. Reducing warnings is good practice, though not always necessary for basic problems.

---

## Simulation
Once compiled, the circuit is simulated with test cases. The simulation compares the output of your circuit with a reference to identify any mismatches. The waveform visualization includes:
- **Inputs**
- **Your Outputs**
- **Reference Outputs**
- **Mismatch Indicators**

A correct circuit will have all outputs match exactly with the reference design.

---

## Final Status
Possible outcomes after simulation:
- ✅ **Success!** — Your circuit is correct.
- ❌ **Compile Error** — Your code failed to compile.
- ❗ **Simulation Error** — Compiled, but simulation did not complete.
- ⚠️ **Incorrect** — Outputs didn’t match the expected behavior.

---

## Problem Statement
Build a circuit with no inputs and one output.  
That output should always drive logic high (1).

---

## 🔗 Solution and Reference

- 📄 **Solution Code**: [View on GitHub](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/1.%20Getting%20Started/1.1%20Getting%20Started/Getting%20Started.v)  
- ❓ **Problem Link**: [Step One Problem](https://hdlbits.01xz.net/wiki/Step_one)
