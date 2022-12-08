# Learning x86_ASM
### Registers

![|400](https://i.imgur.com/7FWu2Fg.png)

Historically ->
- EAX was called the accumulator
- ECX was the counter

Currently, the 2 registers ESP (stack pointer) and EBP (base pointer) are reserved for special purposes

> Register names are not case sensitive

The least significant 2 bytes of EAX can be treated as a 16-bit register called AX. 
The least significant byte of AX is AL, while the most significant one is AH

---
## Memory and Addressing Modes
### Declaring static data regions
All data declarations should be preceded by the ```.data``` directive.
Following the directive, the directives DB,DW,DD can be used to declare 1,2,4 byte data locations respectively. The declared locations can be labeled with names for later reference - abiding by some lower level rules. 
> These sequential declarations will be located in memory next to one another.

Ex.
```
.data
	var	 	db 64		; declare a byte, referred to as location var, containing the value 64
	var2 	db ?		; declare an uninitialized byte, referred to as location var2
			db 10		; declare an unlabelled byte containing the value 10, located next to var2
	x		dw ?		; declare a 2-byte uninitialized value referred to as location x
	y		dd 30000	; declare a 4-byte value, referred to as location y, initialized to 30000

```

Some more examples pertaining to creating arrays of data ->
```

```

