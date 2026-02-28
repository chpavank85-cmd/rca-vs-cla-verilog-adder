# 🚀 Parameterized RCA vs CLA Verilog Adder (RTL + Verification + Simulation)

## 📌 Project Overview
This project presents the design, implementation, and comparison of a Parameterized Ripple Carry Adder (RCA) and a 4-bit Carry Lookahead Adder (CLA) using Verilog HDL. The objective is to analyze scalability, carry propagation delay, and performance differences between linear and parallel adder architectures through simulation and waveform analysis.

---

## 🧠 Key Concepts Covered
- RTL Design (Register Transfer Level)
- Parameterization in Verilog
- Combinational Logic Design
- Carry Propagation Mechanisms
- Digital Adder Architectures
- Functional Verification using Testbench
- Simulation & Waveform Analysis (GTKWave)

---

## 🏗️ Design Architecture
                +----------------------+
                |      Testbench      |
                |   (Input Stimulus)  |
                +----------+----------+
                           |
                           v
                  A, B, Cin (Inputs)
                           |
             --------------------------------
             |                              |
             v                              v
    +------------------+         +------------------+
    |  RCA (Param N)   |         |    CLA (4-bit)   |
    | Full Adder Chain |         | Lookahead Logic  |
    +--------+---------+         +--------+---------+
             |                            |
             v                            v
      Sum_rca, Cout_rca           Sum_cla, Cout_cla
             |                            |
             ---------> GTKWave <---------
                (Performance Comparison)
