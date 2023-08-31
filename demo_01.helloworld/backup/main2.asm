# This x86 version uses nasm to compile.
; int main(){
;     printf("Hello, World!\n");
; }

section .data
    ; the hello before the db is a label
    ; db - defines bytes. Declares a sequence of bytes in memory (for the string)
    ; 0, acts as the null terminator
    hello db 'Hello, World!',0
    newline db 10,0            

section .text
    global _start

_start:
    ; write the string to stdout
    ; essentially does fprintf(stdout, "Hello, World\n");
    ; Writing to stdout
    mov rax, 1                  ; syscall number for write
    mov rdi, 1                  ; file descriptor 1 (stdout)
    mov rsi, hello              ; address of string to write
    mov rdx, 13                 ; number of bytes to write
    syscall

    ; write the newline character
    ; handle newlining the string (pretty sure there is a better way of doing it, but this'll do)
    mov rax, 1                  ; syscall number for write
    mov rdi, 1                  ; file descriptor 1 (stdout)
    mov rsi, newline            ; address of newline character
    mov rdx, 1                  ; number of bytes to write
    syscall

    ; exit the program
    call exit

exit:
    mov eax, 60                 ; syscall number for exit
    xor edi, edi                ; exit status 0
    syscall