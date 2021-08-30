CC = g++
FLAGS_STATIC = -c
FLAGS_SHARED = -c -fPIC
DIR_HEADERS = ../include
DIR_STATIC_LIB = ../lib/static_library/
DIR_SHARED_LIB = ../lib/shared_library/
STATIC_LIB_NAME = libumbrella.a
SHARED_LIB_NAME = libumbrella.so

static:
	$(CC) $(FLAGS_STATIC) math.cpp -I $(DIR_HEADERS)
	ar crv $(DIR_STATIC_LIB)$(STATIC_LIB_NAME) math.o
	make clean

shared:
	$(CC) $(FLAGS_SHARED) math.cpp -I $(DIR_HEADERS)
	$(CC) -shared -o $(DIR_SHARED_LIB)$(SHARED_LIB_NAME) math.o
	make clean
	
clean:
	rm *.o
	
all:
	make static
	make shared