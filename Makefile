OSTYPE=$(shell uname -s)
CC=clang

ifdef OS
hello:
	@echo "hello hello"
	@echo "hello from $(OS)"
else
hello:
	@echo "hello hello"
	@echo "hello from $(OS)"
endif

ifeq ($(OSTYPE),Linux)
build: main.c
	@echo "building main.c on $(OSTYPE)"       
	$(CC) -o bytey main.c
else
build: main.c
	@echo "building main.c on $(OSTYPE)"
	$(CC) -o bytey.exe main.c
endif
clean:
	@echo "cleaning"
	rm byte
