demo: main.o function.o
	g++ -o demo main.o function.o

main.o: main.cpp function.h
	g++ -c main.cpp

function.o: function.cpp function.h
	g++ -c function.cpp

install: demo
	sudo mv demo /usr/bin

clean:
	rm *.o
	if [ -f demo ]; then rm demo; fi
