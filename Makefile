OSTYPE=$(shell uname -s)
UNAME=$(shell uname -a)
CC=clang

ifeq ($(OSTYPE),Linux)
build: main.c
	@echo "building main.c on $(OSTYPE)"
	$(CC) -o bytey main.c
else
build: main.c
	@echo "building main.c on $(UNAME)"
	$(CC) -o bytey.exe main.c
endif
clean:
	@echo "cleaning"
	rm byte
