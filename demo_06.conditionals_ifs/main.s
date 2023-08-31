# int main(){
#     int x = 32;
#     int y = 20;

#     if (x > y) branch_1;
# }

# New instructions
# jp = means jump if greater. Essentially meaning if the value x is greater then y. We go to this specific label.

# If you want to see it work with another instruction then replace with jp with jb

.global main

main:
    

    mov $32, %eax # x = 32
    mov $20, %ebx # y = 20
    cmp %eax, %ebx
    jg branch_1 # if(x > y) branch_1

branch_1: # This is a label that lets us access specific parts of the assembly instructions that has us to stuff
    add %eax, %eax

    ret