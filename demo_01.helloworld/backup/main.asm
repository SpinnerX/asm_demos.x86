# int main(){
#     printf("Hello From x86");
# }

# Ref Link: https://pixelclear.github.io/technical/post/2021/01/02/x86-Assembly-tutorial-part1.html

# Actual useful x86 asm link references

# This link is to help with x86 syntax
# https://flint.cs.yale.edu/cs421/papers/x86-asm/asm.html

# This is for instruction sets
# https://c9x.me/x86/html/file_module_x86_id_5.html

.global _start # _start is considered the main program for x86 asm

.section .text

# _start is the int main() function
_start:
    # rsp = moving to stack ptr
    # rbp = moving base ptr
    # We move whatever our stack ptr to our base ptr
    movq %rsp, %rbp

    # Does printf("123456789\n");
    movq $1, %rax
    movq $1, %rdi
    #  leaq .hello.str, %rsi # Loading equals the string to register %rsi (essentially writing the string)
    leaq output, %rsi # Loading equals the string to register %rsi (essentially writing the string)
    movq $9, %rdx
    syscall
    int $0x80

    call exit

# .text is the text section
# .hello.str:
#     .ascii "123456789\n"
#     len = . - .hello.str

output:
    .ascii "123456789\n"
    len = . - output


exit:
    movq $60, %rax
    movq $0, %rdi

    # does: return 0; or exit(0);
    syscall
    pop %rbp