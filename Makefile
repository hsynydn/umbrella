all:
	g++ -c umbrella.cpp -I static_lib_demo/include/
	g++ -o umbrella umbrella.o -I static_lib_demo/include/ -L static_lib_demo/lib/ -lumbrella
	rm *.o