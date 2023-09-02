# int main(){
#     read_int();
#     print_number(x);
#     return 0;
# }


# New instruction
# jmp is how we go to that specific label.
# If you know ARM32 this is similar to doing the BL instruction

# jmp prompt  This is how you call a function
# call is how you can get functions from main.c

# 1.) Allocate specific amount of space in memory, for grabbing inputs
# 2.) Calling the function to read in inputs
# 3.) Extracting return value into %eax then pass into the register %ebx
# 4.) Then we pass %ebx to the data register so we can print that value.

.globl main
main:
    sub $8, %rsp # This is to allocate and reserve space in memory for local variables. (8 bytes of space on stack)

    # Call read_int function
    call read_int
    
    mov %eax, %ebx # Store the returned value in %ebx

    # Call print_number function
    mov %ebx, %edi
    call print_number

    jmp return

return:
    add $8, %rsp # Here we deallocate the memory at regioster %rsp

    mov $0, %eax
    ret