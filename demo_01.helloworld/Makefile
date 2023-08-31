# We add -no-pie because we get the error because it fails because of fPIE and to compile without it.
# -wno-pie or -no-pie helps disable generation of PIE
a.out:
	gcc -no-pie -o main main.s 
	
main:
	as -64 -o main.o main.asm
	ld -m elf_x86_64 -o main main.o

clean:
	rm -rf *.o
	rm -rf main
