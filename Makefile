CC = gcc
CFLAGS = -Wall -ansi -pedantic -g -lm
SRC = $(wildcard *.c)
FILES = $(shell find . -type f -executable -exec rm '{}' \;)

all: $(SRC:.c=)

c.:
	$(CC) $(CFLAGS) $< -o $@
clean:
	$(FILES)
