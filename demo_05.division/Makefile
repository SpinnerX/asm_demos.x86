a.out:
	gcc main.s -o main

main:
	as -64 -o main.o main.s
	ld -m elf_x86_64 -o main main.o



clean:
	rm -rf *.o
	rm -rf main
