Parameterized Adder Comparative Analysis: RCA vs CLA (Verilog)
Verilog Tool Status

This repository contains the design and comparative analysis of a parameterized adder architecture implemented in Verilog using two different approaches:

Ripple Carry Adder (RCA) – Area Efficient, Simple Architecture

Carry Lookahead Adder (CLA) – High Speed, Parallel Carry Computation

Unlike fixed 4-bit or 8-bit designs, this project uses parameterization, allowing scalable bit-width synthesis for deeper VLSI analysis.

📂 Project Structure
rca-vs-cla-verilog-adder/
│
├── rtl/
│   ├── full_adder.v        # 1-bit Full Adder (basic building block)
│   ├── rca_param.v         # Parameterized Ripple Carry Adder
│   ├── cla_4bit.v          # Carry Lookahead Adder module
│   └── top_adder.sv        # Top module (configurable architecture)
│
├── tb/
│   └── testbench.sv        # Functional verification testbench
│
└── README.md
⚙️ Key Design Features

Parameterized Bit Width (Scalable RTL Design)

Modular Hardware Architecture

Synthesizable Verilog/SystemVerilog Code

Comparative Study of Speed vs Area

Reusable VLSI Design Components

This makes the design suitable for ASIC/FPGA workflows and academic VLSI projects.

🧠 Architecture Overview
1. Ripple Carry Adder (RCA)

Built using cascaded full adders

Carry propagates sequentially from LSB to MSB

Time Complexity: O(N)

Advantage: Low area, simple routing

Limitation: High propagation delay for large N

2. Carry Lookahead Adder (CLA)

Uses Generate (G) and Propagate (P) logic

Computes carries in parallel

Time Complexity: O(log N) (faster than RCA)

Advantage: High speed performance

Limitation: More hardware complexity and area
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


📊 Comparative Analysis Objective

The main goal of this project is to analyze:

Propagation Delay

Hardware Utilization (Area)

Scalability with Bit-Width (N)

Performance trade-offs between RCA and CLA

Expected Insight:

RCA is suitable for area-constrained designs

CLA is preferred for high-speed processor datapaths

🧪 Simulation & Verification

Testbench (tb/testbench.v) verifies:

Correct sum and carry output

Multiple input combinations

Functional correctness of both architectures

Parameter scalability testing

Simulation can be performed using:

Icarus Verilog (for basic verification)

🚀 How to Run the Project
Step 1: Clone the Repository
git clone https://github.com/chpavank85-cmd/rca-vs-cla-verilog-adder.git
cd rca-vs-cla-verilog-adder
Step 2: Add Files to Simulator

Include all RTL and Testbench files:

rtl/full_adder.v

rtl/rca_param.v

rtl/cla_4bit.v

rtl/top_adder.sv

tb/testbench.sv

Step 3: Run Simulation

Compile and simulate using your preferred EDA tool to observe waveform outputs and timing behavior.

📈 VLSI Relevance

This project demonstrates fundamental digital design concepts used in:

ALU Design

Processor Datapath Units

High-Speed Arithmetic Circuits

ASIC & FPGA Design Flows

Parameterization reflects real-world RTL design practices followed in the semiconductor industry.

🔍 Future Improvements (Critical Upgrade Opportunities)

Fully Parameterized CLA (Currently limited structure)

Synthesis Reports (Area, Timing, Power)

FPGA Implementation (Artix-7 / Spartan)

PPA (Power, Performance, Area) Analysis

Pipeline Adder Architecture for high-frequency systems

👨‍💻 Author

Developed as a VLSI-focused RTL design project to study scalable adder architectures and their performance trade-offs in modern digital systems.
