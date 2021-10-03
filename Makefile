build: main.c
	@echo "building main.c"
	gcc -o byte main.c

clean:
	@echo "cleaning"
	rm byte

