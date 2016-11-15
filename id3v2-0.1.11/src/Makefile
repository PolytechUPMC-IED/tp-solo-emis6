#Question8:
LD_LIBRARY_PATH=/home/sasl/shared/main3/env/tools/include/lib
CC=g++
CFLAGS=-Wall

ID3=/home/sasl/shared/main3/env/tools/include

OBJ=convert.o  genre.o list.o 

all: convert  genre list #id3v2

convert:
	${CC} -I ${ID3} -DVERSION="\"${VERSION}\"" -c -o convert.o convert.cpp

create_map:	
	${CC} -I ${ID3} -DVERSION="\"${VERSION}\"" -c -o create_map.o create_map.cpp

genre:
	${CC} -I ${ID3} -DVERSION="\"${VERSION}\"" -c -o genre.o genre.cpp

list:
	${CC} -I ${ID3} -DVERSION="\"${VERSION}\"" -c -o list.o list.cpp

#I have run out of time!
#id3v2:
#	${CC} -L ${LD_LIBRARY_PATH} CFLAGS -o id3v2

clean:
	rm  ${OBJ}

install:
	mkdir ../bin; cp -a ${OBJ} ../bin; mkdir ../man; mkdir ../man/man1; #mkdir ../man/man1/id3v2.1; 
	nroff -man ../id3v2.1 > ../man/man1/id3v2.1
distclean:
	rm -r ../bin; rm  ../man/man1/id3v2.1