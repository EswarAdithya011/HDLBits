## Notgate – Inverter

This fundamental exercise focuses on designing a basic digital logic component: the **NOT gate**. While conceptually simple, inverters are one of the most essential elements in any digital system. They are used in signal conditioning, control logic, and clock inversion circuits.

---

### Problem Statement  
Implement an inverter circuit using Verilog HDL. The module must invert the input signal and assign the result to the output. Use a continuous assignment to achieve this behavior.

📘 *Concept Insight:*  
In Verilog, `assign` statements represent continuous assignments, ensuring that output logic always reflects any changes to the input in real-time, akin to actual physical hardware behavior.

🔗 [View Problem on HDLBits](https://hdlbits.01xz.net/wiki/Notgate)

---

### Solution  
📄 [View Solution Code](https://github.com/EswarAdithya011/HDLBits/blob/main/Problem%20Sets/2.%20Verilog%20Language/2.1%20Basics/2.1.3%20Inverter/Inverter.v)

```verilog
module top_module(input in, output out);
    assign out = ~in;
endmodule

