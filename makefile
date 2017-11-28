CC	=	g++
CFLAGS	=	-g
RM	=	rm	-f

default:all

all:Hello

Hello:main.c
	$(CC)	$(CFLAGS)	-o	myapp	main.c

clean	veryclean:
	$(RM)	Hello