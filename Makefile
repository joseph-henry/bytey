OSTYPE=$(shell uname -s)
CC=clang

ifeq ($(OS),Windows_NT)
build: main.c
	@echo "building main.c on $(OS)"
	$(CC) -o bytey.exe main.c
else
build: main.c
	@echo "building main.c on $(OS)"
	$(CC) -o bytey main.c
endif
clean:
	@echo "cleaning"
	rm byte

