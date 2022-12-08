; Program: exit
; Executes the exit system call
; No input
; Output: only the exit status ($? in the shell)

segment .text       ; keep the following instructions in the .text segment
global main         ; entry point for the program

main:
    mov eax,1   ; 1 is the exit syscall
    mov ebx,4   ; the status value to return
    int 0x80    ; execute a system call, which is the way Linux handles 32 bit system calls

