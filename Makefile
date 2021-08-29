static:
	g++ -c umbrella.cpp -I ./include/
	g++ -o umbrella_static umbrella.o -I ./include/ -L lib/static_library/ -lumbrella
	rm *.o
	
shared:
	g++ -c umbrella.cpp -I ./include/
	g++ -o umbrella_shared umbrella.o -I ./include/ ./lib/shared_library/libumbrella.so
	rm *.o