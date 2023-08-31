# Type: echo $? to see the return value
# int main(){
#     int x = 32;
#     return x;
# }

# This is just to show boilerplate for the x86 AT&T assembly.
# ret is how we exit out the function. Acts as exit(0), or as the end null to indicate this instruction has finished running and to just return.

.global main

main:
    mov $32, %eax # int x = 32;

    ret