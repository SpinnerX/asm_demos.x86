# int main(){
#    int x = 1;
#    x = x + 2;
#    return x;
# }

# Compiling with gcc: gcc main.s -o main && ./main ; echo "$?"

.global main

main:

    # put 1 (1 byte int/char) into accumulator register
    mov $4, %eax

    # add 2 (1 byte int/char), storing result in accumulator
    add $2, %eax

    # move the result of the accumulator into Data register (input/output)
    mov %eax, %edx
    ret

exit:
    movq $60, %rax
    movq $0, %rdi

    # does: return 0; or exit(0);
    syscall
    pop %rbp