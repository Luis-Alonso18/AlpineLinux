@@
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computación
@@ Ing. En Sistemas Computacionales
@@   
@@ Autor : Alonso Villegas Luis Antonio @nickname Luis-Alonso18
@@ Repositorio: https://github.com/Luis-Alonso18/AlpineLinux/blob/main/code/Makefile
@@ Fecha de revisión: 02/12/2020
@@ 
@
@ Objetivo del programa:
@    Automatizar la compilación de hola mundo.
# Makefile

all: holamundo
holamundo: holamundo.o 
  as -o holamundo.o holamundo.s
holamundo.o: holamundo.s 
  ld -o holamundo holamundo.o
  
clean:
  rm -vf holamundo *.o

