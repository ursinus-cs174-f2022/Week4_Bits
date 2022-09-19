CC=g++
CFLAGS=-std=c++11 -g -Wall 

all: num2binary mynum2binary binary2num mybinary2num encrypt

num2binary: num2binary.cpp
	$(CC) $(CFLAGS) -o num2binary num2binary.cpp

mynum2binary: mynum2binary.cpp
	$(CC) $(CFLAGS) -o mynum2binary mynum2binary.cpp

binary2num: binary2num.cpp
	$(CC) $(CFLAGS) -o binary2num binary2num.cpp

mybinary2num: mybinary2num.cpp
	$(CC) $(CFLAGS) -o mybinary2num mybinary2num.cpp

fileutils.o: fileutils.h fileutils.cpp
	$(CC) $(CFLAGS) -c fileutils.cpp

encrypt: encrypt.cpp fileutils.o
	$(CC) $(CFLAGS) -o encrypt fileutils.o encrypt.cpp

clean:
	rm num2binary mynum2binary binary2num mybinary2num encrypt fileutils.o