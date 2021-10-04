OSTYPE=$(shell uname -s)
CC=clang

#
# https://newbedev.com/os-detecting-makefile
#

ifeq '$(findstring ;,$(PATH))' ';'
	detected_OS := Windows
else
	detected_OS := $(shell uname 2>/dev/null || echo Unknown)
	detected_OS := $(patsubst CYGWIN%,Cygwin,$(detected_OS))
	detected_OS := $(patsubst MSYS%,MSYS,$(detected_OS))
	detected_OS := $(patsubst MINGW%,MSYS,$(detected_OS))
endif

ifeq ($(detected_OS),Windows)
	CFLAGS += -D WIN32
	ifeq ($(PROCESSOR_ARCHITEW6432),AMD64)
		CFLAGS += -D AMD64
	else
		ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
			CFLAGS += -D AMD64
		endif
		ifeq ($(PROCESSOR_ARCHITECTURE),x86)
			CFLAGS += -D IA32
		endif
	endif
else
	ifeq ($(detected_OS),Linux)
		CFLAGS += -D LINUX
	endif
	ifeq ($(detected_OS),Darwin)
		CFLAGS += -D OSX
	endif
	ifeq ($(detected_OS),FreeBSD)
		CFLAGS += -D FreeBSD
	endif
	ifeq ($(detected_OS),NetBSD)
		CFLAGS += -D NetBSD
	endif
	ifeq ($(detected_OS),OpenBSD)
		CFLAGS += -D OpenBSD
	endif

	PROCESSOR := $(shell uname -m)
	ifeq ($(PROCESSOR),x86_64)
		CFLAGS += -D AMD64
	endif
	ifneq ($(filter %86,$(PROCESSOR)),)
		CFLAGS += -D IA32
	endif
	ifneq ($(filter arm%,$(PROCESSOR)),)
		CFLAGS += -D ARM
	endif
	ifneq ($(filter s390%,$(PROCESSOR)),)
		CFLAGS += -D s390x
		CC=gcc
	endif
endif

#
# Make
#

ifeq ($(OS),Windows_NT)
build: main.c
	@echo "building main.c on $(detected_OS) on ${PROCESSOR_ARCHITECTURE}"
	@echo "CC: $(CC)"
	@echo "CFLAGS: $(CFLAGS)"
	$(CC) $(CFLAGS) -o bytey.exe main.c
clean:
	@echo "cleaning"
	del byte.txt
else
build: main.c
	@echo "building main.c on $(detected_OS) on ${PROCESSOR}"
	@echo "CC: $(CC)"
	@echo "CFLAGS: $(CFLAGS)"
	$(CC) $(CFLAGS) -o bytey main.c
clean:
	@echo "cleaning"
	rm bytey
endif

docker:
	@echo "build docker image"
	docker buildx uninstall
	docker build -t someara/bytey .

docker-multiarch:
	@echo "build docker multiarch images"
	docker buildx install
	docker buildx build --push --platform linux/386,linux/amd64,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x -t someara/bytey .
