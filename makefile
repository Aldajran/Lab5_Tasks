all: program

program: lab3.c
	gcc lab3.c -o program

clean:
	rm -f program


