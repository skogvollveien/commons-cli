SHELL = /bin/sh

CC = gcc

CFLAGS = -std=c11 -Wall -Werror

all:
	mkdir -p bin
	$(CC) defs.c $(CFLAGS) -o bin/defs
	$(CC) buffer.c $(CFLAGS) -o bin/buffer

clean:
	rm -rf bin

install:
	cp bin/defs /bin
	cp bin/buffer /bin
