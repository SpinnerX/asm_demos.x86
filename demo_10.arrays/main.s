# int main(){
#     int largest = 0;
#     std::vector<int> arr = {3,67,34,222,45,75,54,34,44,33,22,11,66,0};
#     for(size_t i = 0; i <  arr.size(); i++){
#         if(arr[i] > largest) largest = arr[i];
#     }
#     print_number(largest); // Which essentially does printf("Val: %i\n", largest);
#     return 0;
# }


# find the maximum number in array
# edi - index of the array
# ebx - largest number
# eax - current element

.section .data

# This is how we create literal data types in x86 (AT&T Syntax)
array:
    .long 3,67,34,222,45,75,54,34,44,33,22,11,66,0

.section .text
.globl main

main:
    sub $8, %rsp
    movl $0, %edi # set the index to 0
    movl array(,%edi,4), %eax # set to the first index (array + edi * 4)
    movl %eax, %ebx # the largest number starts out as the first element

loop: # the loop for searching the array and setting the max element
    cmpl $0, %eax # check to see if we're at the end (0)
    
    je break # if so break out the loop
    incl %edi
    
    movl array(,%edi,4), %eax # load the current element
    cmpl %ebx, %eax # compare eax to ebx
    jle loop

    movl %eax, %ebx # set the current element to the new largest index
    jmp loop

break:
    mov %ebx, %edi
    call print_largest # Printing to stdout the largest value (which is loaded into register %ebx)

    # return the maximum number as the exit code
    add $8, %rsp
    movl $1, %eax
    int $0x80
    ret