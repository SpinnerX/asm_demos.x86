# int main() {
# 	int x = 32;
# 	int y = 20;
# 	if (x > y) 
# 		return 68;
# 	else
# 		return -10;
# }

# New instruction: jbe = which means jump if below or equals. Which means jump to label "data", if the values y is lower then y.
# This is how we do an else-statement

.global main # main function


main:
    mov $32, %ebx # int x = 32;
    mov $20, %ecx # int y = 20;

    # if (x > y) return 68
    cmp %eax, %ebx
    mov $68, %eax 

    # else return 10
    jbe data

data:
    mov $10, %eax
    mov %eax, %edx
    ret
