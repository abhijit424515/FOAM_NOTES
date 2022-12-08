One advantage of assembly language is that it can do things not possible in high level languages. Examples of this include handling hardware interrupts and managing memory mapping features of a CPU. These features are essential in an operating system, though not required for application programming.

More importantly understanding the translation from high level language to machine language is fundamental in understanding why bugs behave the way they do.

Without studying assembly language, a programming language is primarily a mathematical concept obeying mathematical laws. Underneath this mathematical exterior the computer executes machine instructions which have limits and can have unexpected behavior.

---

```;``` is used to write a one-line comment, strating from the semicolon upto the end of the line

example -> 12-byte program
[[12-byte-prog-1.asm]]
![](https://i.imgur.com/EVmw4Yt.png)

---
[[Assembling and Linking]]

### Exercise 1:
1. the value written to the ebx register is the status value to return after the program exits
2. replace ```_start``` with ```main``` in .globl and the entry point of program

---
[[Numbers in Computers]]

---
# Computer Memory
In CPUs, there exist registers called HARDWARE MAPPING REGISTERS (HMRs), which give each process a protected address space. 
This means that multiple people can each run a program which starts at address say 0x4004c8. These processes perceive the same **logical addresses**, but they use memory at different **physical addresses**.

The HMRs on an x86_64 CPU can map pages of 2 different sizes: 4KB and 2MB.
Linux is designed to use 2MB HMRs for the kernel, while it uses 4KB HMRs for most other uses. 

Say using a 4KB HMR, a process uses the logical address 0x4000002220. 
Thus, the page offset is the last 12 bits, or the last 3 hex letters (0x220), while the page number is the rest of the bytes (0c=x4000002).
An HMR translates this page number to a physical page address, say 0x780000000, which when combined with the page offset gives the physical address 0x780000000220.

---
# Process memory model in Linux
For any process, the memory is divided into 4 logical regions:
1. text
2. data
3. heap
4. stack

![](https://i.imgur.com/4PoQyEf.png)

