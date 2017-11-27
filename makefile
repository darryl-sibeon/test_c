CC      = gcc
CFLAGS  = -g
RM      = rm -f


default: all

all: Hello

Hello: main.c
    $(CC) $(CFLAGS) -o Hello main.c

clean veryclean:
    $(RM) Hello