# Uncommon Assembly Bug: Potential for Out-of-Bounds Memory Access

This repository demonstrates a potential bug in assembly code related to unchecked memory access. The bug involves accessing memory at an address calculated from registers without proper bounds checking, leading to potential out-of-bounds reads or writes. This can cause segmentation faults, data corruption, and unpredictable program behavior.

## Bug Description
The `bug.asm` file contains assembly code with a vulnerable instruction that accesses memory using a calculated address based on register values (ebx and ecx). The lack of validation on these register values before the memory access introduces the risk of accessing invalid memory locations.

## Solution
The `bugSolution.asm` file shows a corrected version of the code.  It incorporates checks to ensure that the calculated address is within the valid bounds of allocated memory, thereby mitigating the risk of out-of-bounds memory access. 

## How to Reproduce
1. Clone this repository.
2. Assemble and link the `bug.asm` file (using appropriate assembler and linker for your target architecture). You should observe an error when running the program if the values in ebx and ecx lead to an invalid address.
3. Assemble and link `bugSolution.asm` to see the corrected implementation.