# Makefile for Student Management System

objects=grade.o menu.o student.o utils.o
headers=menu.h grade.h utils.h student.h

Main: main.o ${objects}
	gcc main.o ${objects} -o Main
	
main.o: main.c menu.h student.h
	gcc -c main.c
	
grade.o: grade.c grade.h student.h
	gcc -c grade.c

student.o: student.c student.h
	gcc -c student.c
	
menu.o: menu.c ${headers}
	gcc -c menu.c

utils.o: utils.c utils.h
	gcc -c utils.c



clean:
	rm -f *.o Main
