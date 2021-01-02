# A MICRO ARCHITECTURE TO IMPLEMENT RV32I Instruction set  

RISC-V is a free and open ISA enabling a new era of processor innovation through open standard collaboration. The RISC-V ISA delivers a new level of free, extensible software and hardware freedom on architecture, paving the way for the next 50 years of computing design and innovation. TL Verilog has been used to implement Microarchitecture. TL Verilog has been very handy, especially when implementing pipelining concepts. Makerchip IDE is the platform which we used to work on TL Verilog. RISCV has 32 registers. For RV32 the width of registers is 32, where as for RV64 it is 64

Description of Work:
 If a program is written in higher level language [C/C++] , it needs to be converted to binary format in order to execute on hardware. Steps:
1) Compiler takes highlevel C program and generates instructions from it. The format like .exe file comes out. These instruction format may change depending on type of ISA like RISCV/ARM ISA etc. Instructions are abstract interface between C/C++ and hardware, hence they are called ISA. 
2) These instructions are taken by Assembler and it generates binary pattern. Hardware has to understand the function. We need RTL which implements the add/subtract specification.
RISCV  Compiler converts C code into ISA. Spike simulator will help to generate output of the assembly of instructions.

Spike Simulator:
Spike is the golden reference functional RISC-V ISA C++ sofware simulator. It serves as a starting point for running software on a RISC-V target. Sum of 1st n natural numbers has been taken as an example and all the steps are clearly documented in Day2 folder.

Application Binary Interface: Some parts of ISA  can be directly accessed by user and OS via system calls. If application programmer wants to access hardware he should do this through the registers. Sum of 1 to n natural numbers coding has been done using the concept of Application Binary Interface. RISCV has 32 registers. For RV32 the width of registers is 32, where as for RV64 it is 64. The data can be loaded from memory to registers or directly sent, Application programmer can access each of these 32 registers through its ABI name. RISCV is little Endian Addressing system.


Please go through the Day2 folder documentation for more details. 





Summary:
The complete implementation of sequential calculator has been done and also the  pipelining has been implemented on it
The complete implementation of riscv has been done and problems of readwrite hazard and branch hazard and load hazard had been addressed.
The codes can be seen in  Day3-5 and Day2 folder
