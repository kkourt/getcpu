all: getcpu

getcpu: getcpu.c
	gcc -Wall -static getcpu.c -o getcpu 

clean:
	rm getcpu
