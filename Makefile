# Connection Tester (ct)
# See LICENSE for copyright and license details.
.POSIX:

MYCFLAGS = -std=c99 -ffast-math -Wall -Wextra -pedantic $(CFLAGS)
MYLDFLAGS = $(CFLAGS)
OBJECTS = main.o

all: ct
ct: $(OBJECTS)
	$(CC) $(OBJECTS) -o ct $(MYLDFLAGS)
.c.o:
	$(CC) $(MYCFLAGS) -c $<

# Etc
.PHONY: clean
clean:
	rm -fv ct *.o