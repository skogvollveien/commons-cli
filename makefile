CC = gcc
CFLAGS = -std=c11 -Wall -Werror

BUILDDIR=bin
DESTDIR=/usr/bin
SOURCES:=$(wildcard *.c)
EXECUTABLES:=$(addprefix $(BUILDDIR)/,$(SOURCES:.c=))

$(shell mkdir -p $(BUILDDIR))

all: $(EXECUTABLES)

$(BUILDDIR)/%: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf bin

install: all
	install -d $(DESTDIR)
	install $(EXECUTABLES) $(DESTDIR)

.PHONY: all clean install
