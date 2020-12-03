# Makefile

all: holamundo
holamundo: holamundo.o 
  as -o holamundo.o holamundo.s
holamundo.o: holamundo.s 
  ld -o holamundo holamundo.o
  
clean:
  rm -vf holamundo *.o

