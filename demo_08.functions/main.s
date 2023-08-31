.global main

# New instruction
# jmp is how we go to that specific label.
# If you know ARM32 this is similar to doing the BL instruction

main:
    mov $0, %eax
    mov $0, %ebx
    jmp prompt # This is how you call a function

    call return


return:
    ret