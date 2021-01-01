# A MICRO ARCHITECTURE TO IMPLEMENT RV32I Instruction set  

RISC-V is a free and open ISA enabling a new era of processor innovation through open standard collaboration. The RISC-V ISA delivers a new level of free, extensible software and hardware freedom on architecture, paving the way for the next 50 years of computing design and innovation. TL Verilog has been used to implement Microarchitecture. TL Verilog has been very comfortable especially when implementing pipelining concepts. Makerchip IDE is the platform which we used to work on TL Verilog. 

If a program is written in higher level language [C/C++] , it needs to be converted to binary format in order to execute on hardware. Steps:
1) Compiler takes highlevel C program and generates instructions from it. The format like .exe file comes out. These instruction format may change depending on type of ISA like RISCV/ARM ISA etc. Instructions are abstract interface between C/C++ and hardware, hence they are called ISA. 
2) These instructions are taken by Assembler and it generates binary pattern. Hardware has to understand the function. We need RTL which implements the add/subtract specification.
RISCV Compiler converts C code into ISA. Spike simulator Spike is the golden reference functional RISC-V ISA C++ sofware simulator. It serves as a starting point for running software on a RISC-V target. Sum of 1st n natural numbers has been taken as an example and all the steps are clearly documented in Day2 folder.

Summary:
The complete implementation of sequential calculator has been done and also the  pipelining has been implemented on it
The complete implementation of riscv has been done and problems of readwrite hazard and branch hazard and load hazard had been addressed.
The codes can be seen in  Day3-5 and Day2 folder
