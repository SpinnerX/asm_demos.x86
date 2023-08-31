# int main(){
#    int x = 1;
#    x = x * 2;
#    return x;
# }

# We are using AT&T X86 assembly format!

# Compiling with gcc: gcc main.s -o main && ./main ; echo "$?"

.global main

main:

    # put 1 (1 byte int/char) into accumulator register
    mov $10, %eax # x = 10;

    add $50, %eax # x = x + 50;

    mov $5, %ebx

    # x = 60 (currently)
    imul %eax, %ebx
    

    # move the result of the accumulator into Data register (input/output)
    mov %ebx, %edx # return x; This moves to data register when we do "$?"
    ret

exit:
    movq $60, %rax
    movq $0, %rdi

    # does: return 0; or exit(0);
    syscall
    pop %rbp
