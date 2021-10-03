OSTYPE=$(shell uname -s)
CC=clang

ifeq ($(OS),Windows_NT)
build: main.c
	@echo "building main.c on $(OS)"
	$(CC) -o bytey.exe main.c
clean:
	@echo "cleaning"
	del byte.txt
else
build: main.c
	@echo "building main.c on $(OSTYPE)"
	$(CC) -o bytey main.c
clean:
	@echo "cleaning"
	rm byte
endif
