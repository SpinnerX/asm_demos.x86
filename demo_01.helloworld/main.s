# int main(){
#     printf("Hello World!\n");
# }

.global main

.section .data
msg:
    .asciz "Hello, World!\n"

.section .text
main:
    mov $1, %rax            # write system call
    mov $1, %rdi            # writing to stdout (FILE *)
    mov $msg, %rsi          # pointer to the message
    # mov $13, %rdx         # length of the message
    mov $14, %rdx           # length of the message (including newline)
    syscall                 # This is how we call the write() to print out "Hello World\n"

exit:
    mov $60, %rax           # exit system call
    xor %rdi, %rdi          # exit status: 0
    syscall