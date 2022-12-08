We will use the yasm assembler to produce an **object file** from an assembly source code file. 
```yasm -f elf64 -g dwarf2 -l file.lst file.asm```
> Yasm is modeled after nasm, and it produces object code which works properly with gdb and ddd debuggers, while nasm did not produce debuggable code for testing

- The ```-f elf64``` option selects a 64-bit output format, which is compatible with linux and gcc
- The ```-g dwarf2``` option selects the dwarf2 debugging format, which is **essential** for using a debugger
- The ```-l name.lst``` asks for a listing file, which shows the generated code in hex.

---
The yasm produces an object file **name.o**, which contains the generated instructions and data in a form ready to link with other code from other object files and libraries. 

In case of an assembly program with the ```_start``` function, the linking needs to be done using ```ld -o name name.o```

In case we used ```main``` instead, use ```gcc -o name name.o```
Here, gcc will call main from ```_start```

We can execute the program using ```./name```

