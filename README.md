![Screenshot 2023-09-01 at 10 32 48 PM](https://github.com/SpinnerX/asm_demos.x86/assets/56617292/e0056d6a-1003-45c3-bba8-057848f6048f)

## Description

AT&T X86 Assembly
Description utilizing AT&T X86 assembly syntax. in this asm_demos. Where there are basic examples of x86 assembly.


X86 instruction user manual
This link will allow us to know how to call specific instructions to do what we want it to do.
Link to the x86 assembly resource - ` https://docs.oracle.com/cd/E53394_01/pdf/E54851.pdf `

## Example Syntax Fundamentals

- Basic Syntaxes
- Basic arithmetic (addition, subtraction, multiplication, and division) ✅
- Conditional statements (using labels, and instructions like cmp, and jmp) ✅
- functions (calling C functions, and using labels as assembly's version of function calls) ✅
- loops (in assembly implementing the way for-loops work) ✅
- Handle in loading in arrays (learning and demos of how to load in array (and possibly 2D arrays in x86)
- Handling classes functionality (essentially the x86 method of how to handle classes )
- inline function calls (using extern "C", to call C functions and possibly a look into inline functions of using `asm` or `__asm__`)




## Example projects demonstrating applications

Example programs (utilizing the basic asm_demos)
- asm_fizzbuzz (Where we implement fizzbuzz, using x86 assembly)

## All general purpose registers

Overview
Registers are what we load values into, either a value to that register. Or from one register to the other.
Use the "mov" command if you want to load a value to a register. (Reference to the demo_00.boilerplate, to test how mov works)

```
%eax - Return value (can also be used for arithmetic and logical operations)
%ebx - General-purpose for temp storage
%ecx - General-purpose for temp storage 
%edx - General-purpose for temp storage
%esi - Additional general-purpose registers
%edi - Additional general-purpose registers
```


for passing arguments and storing temp values during function calls.
```
%ebp - (base ptr can also be used for creating a stack frame and accessing local variables)
%esp - stack ptr for managing the functions call stack
%xmm0 to %xmm7 - XMM registers are for doing SIMD operations (floating-point)
```

These registers used for passing arguments, storing values during function calls. Important to know
these registers are not preserved across function calls. Meaning their values can be modified by the called functions


These registers are like the general-purpose except these are the 64-bit counterparts of those registers.
```
%rax - 64-bit versions of the general-purpose registers %eax
%rbx - 64-bit versions of the general-purpose registers %ebx
%rcx - 64-bit versions of the general-purpose registers %ecx
%rdx - 64-bit versions of the general-purpose registers %edx

%rbp - 64-bit version of the general purpose register %ebp
%rsp - 64-bit version of the general purpose register %esp
```
