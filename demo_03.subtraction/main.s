# int main(){
#    int x = 1;
#    x = x - 2;
#    return x;
# }

# Compiling with gcc: gcc main.s -o main && ./main ; echo "$?"

.global main

main:

    # put 1 (1 byte int/char) into accumulator register
    mov $10, %eax # x = 10;

    add $50, %eax # x = x + 50;

    # add 2 (1 byte int/char), storing result in accumulator
    sub $5, %eax # x = x - 5;

    # move the result of the accumulator into Data register (input/output)
    mov %eax, %edx # return x; This moves to data register when we do "$?"
    ret

exit:
    movq $60, %rax
    movq $0, %rdi

    # does: return 0; or exit(0);
    syscall
    pop %rbp