OSTYPE=$(shell uname -s)
CC=clang

build: main.c
	@echo "building main.c on $(OSTYPE)"
	$(CC) -o bytey main.c

clean:
	@echo "cleaning"
	rm byte
