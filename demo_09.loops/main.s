# int main(){
#     int x = 1;
#     int y = 5;

#     for(int i = 0; i < y; i++){
#         x *= 2;
#		  printf("I: %i\n", y);
#     }

#     return x;
# }

# NOTE: When doing a for loop, counter decreases rather increases

# jl means "jump if less" and then "jumps to done"
# cmpl compares the values in the registers to the value that is inputted.

.global main
main:
	sub $8, %rsp
	movl $1, %eax    # x = 1
	movl $6, %ebx    # y = 6
	movl $2, %ecx    # We'll be multiplying by 2

top:
	subl $1, %ebx     # y--

	cmpl $0, %ebx     # Compare y with 0
	jl done           # If y < 0 then finish
	imull %ecx, %eax  # x *= 2

	# This is to print the counter
	mov %ebx, %edi
	call print_number

	jmp top           # Go back to the top of the loop

done:
	add $8, %rsp
	movl %eax, %ebx   # return x
	movl $1, %eax     # return 1
	int $0x80         # Return from function and exit