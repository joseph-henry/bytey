OSTYPE=$(shell uname -s)
CC=clang

WINDOWS := $(shell echo OSTYPE | grep $(OSTYPE))

ifeq ($(OSTYPE),Linux)
build: main.c
	@echo "building main.c on $(OSTYPE)"       
	$(CC) -o bytey main.c
else
build: main.c
	@echo "building main.c on $(OSTYPE)"
	@echo "WINDOWS: $(WINDOWS)"
	$(CC) -o bytey.exe main.c
endif
clean:
	@echo "cleaning"
	rm byte
