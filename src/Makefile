static:
	g++ -c math.cpp -I ../include
	ar crv ../lib/static_library/libumbrella.a math.o
	rm *.o

shared:
	g++ -c -fPIC math.cpp -I ../include/
	g++ -shared -o ../lib/shared_library/libumbrella.so math.o
	rm *.o