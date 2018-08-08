BIN=usbdump
SOURCE=usbdump.c
CFLAGS= -g -O -Wall -Werror
LDFLAGS= -g

all: $(BIN)

clean:
	$(RM) *.o $(BIN)

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(BIN): $(patsubst %.c,%.o,$(SOURCE))
	$(CC) $(LDFLAGS) -o $@ $^

.PHONY : all clean
