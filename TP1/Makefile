#OBJS specifies which files to compile as part of the project
OBJS = main.c args_parser.c gcd.S

#OBJS specifies which files to compile as part of the project
OBJS_REGR = regressions.c args_parser.c gcd.S

#CPPC specifies which compiler we're using
CC = cc

#CFLAGS specifies the additional compilation options we're using
CFLAGS=-Wall -g

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = tp1

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME_REGR = regressions

all: tp1 regressions

tp1: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(OBJ_NAME)

regressions: $(OBJS_REGR)
	$(CC) $(CFLAGS) $(OBJS_REGR) -o $(OBJ_NAME_REGR)

test: regressions
	./regressions

clean:
	rm -f tp1 regressions
