![Screenshot 2023-09-01 at 10 32 48 PM](https://github.com/SpinnerX/asm_demos.x86/assets/56617292/e0056d6a-1003-45c3-bba8-057848f6048f)

## Description

x86 Assembly using the AT&T syntax\
Welcome to Asm_Demos!

Asm demos are where you can learn x86 the AT&T syntax. Going from fundamentals to learning how to use function calls to C functions. Including understanding of utilizing AT&T X86 assembly syntax, in the asm_demos. Included are basic demos, and examples that demonstrate how these syntaxes work. Which are to focus on being familiar with using assembly. If your new to x86, this could give you a helping hand\


Reference resource links are below.

## Asm Demos Overview

- Basic Syntaxes
- Basic arithmetic (addition, subtraction, multiplication, and division) ✅
- Conditional statements (using labels, and instructions like cmp, and jmp) ✅
- functions (calling C functions, and using labels as assembly's version of function calls) ✅
- loops (in assembly implementing the way for-loops work) ✅
- Handle loading in arrays (learning and demos of how to load in array (and possibly 2D arrays in x86) ✅


## Examples - small trivial projects demonstrating usage

- asm_fizzbuzz (implemented in x86 referencing to asm demos)
- largest value in the array (implemented in the asm demo #10, as part of the demo)


## Overview - All general-purpose registers
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
## Resourceful Links
AT&T Assembly Syntax Reference Link: `https://csiflabs.cs.ucdavis.edu/~ssdavis/50/att-syntax.htm`\

X86 instruction user manual\
This link will allow us to know how to call specific instructions to do what we want it to do.
Link to the x86 assembly resource - ` https://docs.oracle.com/cd/E53394_01/pdf/E54851.pdf `
