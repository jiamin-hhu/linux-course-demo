all: readFile stdioe

stdioe: stdioe.cpp
	g++ -o stdioe stdioe.cpp

readFile: readFile.cpp
	g++ -o readFile readFile.cpp

clean: 
	rm readFile stdioe
	if [ -f result ]; then rm result; fi 
	if [ -f error ]; then rm error; fi
