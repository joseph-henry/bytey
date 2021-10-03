CC=clang

build: main.c
	@echo "building main.c"
	$(CC) -o bytey main.c

clean:
	@echo "cleaning"
	rm byte
