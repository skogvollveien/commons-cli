SHELL = /bin/sh

CC = gcc

CFLAGS = -std=c11 -Wall -Werror

all:
	mkdir -p bin
	$(CC) defs.c $(CFLAGS) -o bin/defs

clean:
	rm -rf bin

install:
	cp bin/defs /bin
