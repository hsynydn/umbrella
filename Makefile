CC = g++
CFLAGS_STATIC = -c
CFLAGS_SHARED = -c
BFLAGS_STATIC = -o
BFLAGS_SHARED = -o

INCLUDE = ./include
STATIC_LIB = ./lib/static_library/
SHARED_LIB = ./lib/shared_library/

STATIC_LIB_NAME = libumbrella.a
SHARED_LIB_NAME = libumbrella.so

static:
	$(CC) $(CFLAGS_STATIC) umbrella.cpp -I $(INCLUDE)
	$(CC) $(BFLAGS_STATIC) umbrella_static umbrella.o -I $(INCLUDE) -L $(STATIC_LIB) -l:$(STATIC_LIB_NAME)
	make clean
	
shared:
	$(CC) $(CFLAGS_SHARED) umbrella.cpp -I ./include/
	$(CC) $(BFLAGS_SHARED) umbrella_shared umbrella.o -I $(INCLUDE) $(SHARED_LIB)$(SHARED_LIB_NAME)
	make clean
	
clean:
	rm *.o
	
all:
	make static
	make shared