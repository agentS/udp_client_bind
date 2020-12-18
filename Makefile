CC=gcc
# enhance a program until there are no error messages any more
CFLAGS = -std=c11 -Wpedantic -Wall -Wconversion -Werror=vla -Wextra -c -O0
LDFLAGS = -Wpedantic -Wall -o
PROGNAME = udp_client

all: $(PROGNAME)

$(PROGNAME): udp_client.o
	$(CC) $(LDFLAGS) $(PROGNAME) udp_client.o

udp_client.o: udp_client.c udp_client.h
	$(CC) $(CFLAGS) udp_client.c

clean:
	rm -f $(PROGNAME) *.o
