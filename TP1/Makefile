#OBJS specifies which files to compile as part of the project
OBJS = main.c args_parser.c

#CPPC specifies which compiler we're using
CC = cc

#CFLAGS specifies the additional compilation options we're using
CFLAGS=-Wall -g

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = tp1

all: tp1

tp1: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(OBJ_NAME)

clean:
	rm -f tp1
