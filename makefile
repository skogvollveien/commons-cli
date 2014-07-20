SHELL = /bin/sh

CC = gcc

CFLAGS = -std=c11 -Wall -Werror

# All the files to be compiled and stuffed in /bin.
FILES = defs.c buffer.c

all:
	mkdir -p bin
	$(foreach file,$(FILES),$(CC) $(file) $(CFLAGS) -o $(patsubst %.c,bin/%,$(file));)

clean:
	rm -rf bin

install:
	$(foreach filewithextension,$(FILES),cp $(patsubst %.c,bin/%,$(filewithextension)) /bin;)
