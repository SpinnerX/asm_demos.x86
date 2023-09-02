# int main(){
#     int x = 1;
#     int y = 5;

#     for(int i = 0; i < y; i++){
#         x *= 2;
#     }

#     return x;
# }

# jl means "jump if less" and then "jumps to done"
# cmpl compares the values in the registers to the value that is inputted.

.global main
main:
	movl $1, %eax    # x = 1
	movl $6, %ebx    # y = 6
	movl $2, %ecx    # We'll be multiplying by 2

top:
	subl $1, %ebx     # y--
	cmpl $0, %ebx     # Compare y with 0
	jl done           # If y < 0 then finish
	imull %ecx, %eax  # x *= 2
	jmp top           # Go back to the top of the loop

done:
	movl %eax, %ebx   # return x
	movl $1, %eax     # return 1
	int $0x80         # Return from function and exit