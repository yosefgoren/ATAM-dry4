AS=as
CC=gcc

abc.out: a.o b.o c.o d.o
	ld -o $@ $^

a.o: a.asm
	$(AS) -o $@ $^

b.o: b.asm
	$(AS) -o $@ $^

c.o: c.c
	$(CC) -nostdlib -fno-pic -c -o $@ $^

d.o: d.c
	$(CC) -nostdlib -c -o $@ $^

clean:
	rm -rf *.o *.out