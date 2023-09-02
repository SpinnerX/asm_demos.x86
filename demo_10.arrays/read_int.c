#include <stdio.h>

//Make reading an int easy from assembly
int read_int() {
	int x = 0;
	scanf("%i",&x);
	return x;
}

void prompt() {
	printf("Please enter three integers. It will compare the first two using both signed and unsigned comparisons, and then tell you if the first one is between the second and third.\n");
	return;
}


void print_largest(int x){
	printf("Largest number is %i\n", x);
}

void print_number(int x){
	printf("Val: %i\n", x);
}

void print_signed_compare() {
	printf("Doing a signed comparison.\n");
}

void print_unsigned_compare() {
	printf("Doing an unsigned comparison.\n");
}

void less_than(int x, int y) {
	printf("%i is less than %i\n",x,y);
}

void equal_to(int x, int y) {
	printf("%i is equal to %i\n",x,y);
}

void greater_than(int x, int y) {
	printf("%i is greater than %i\n",x,y);
}

void unsigned_less_than(unsigned int x, unsigned int y) {
	printf("%i is less than %i\n",x,y);
}

void unsigned_equal_to(unsigned int x, unsigned int y) {
	printf("%i is equal to %i\n",x,y);
}

void unsigned_greater_than(unsigned int x, unsigned int y) {
	printf("%i is greater than %i\n",x,y);
}

void within(int x, int y, int z) {
	printf("%i is between %i and %i\n",x,y,z);
}

void not_within(int x, int y, int z) {
	printf("%i is not between %i and %i\n",x,y,z);
}
