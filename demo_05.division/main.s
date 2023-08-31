# int main(){
#     int x = 32;
#     int y = 3;
#     int z = x / y;
#     return z;
# }

# sarl means "shift arithmetic right long"
# - This is how we right shift in AT&T x86.

# Just to explain a bit on whats happening
# We load to register %eax value 32.
# Then by that point, using two's compliment.

# Just for review (in case I forget in the long run)
# Before the right shift:
# ---
# 7   6   5   4   3   2   1   0
# 0   0   1   0   0   0   0   0
# ---

# After the right shift by 3 bits:
# ---
# 7   6   5   4   3   2   1   0
# 0   0   0   0   0   1   0   0
# ---

.global main

# Shifting using powers of 2!!
# To see output type: echo $?
main:
	movl $32, %eax # x = 32;
	sarl $3, %eax # x = x >> 3 (Divide by 2^3.)
	ret # Return from function, %eax is return value