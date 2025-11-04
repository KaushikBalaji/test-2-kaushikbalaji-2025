# Makefile for Student Management System

objects=grade.o menu.o student.o utils.o

Main: main.o ${objects}
	gcc main.o ${objects} -o Main
	
%.o: %.c %.h
	gcc -c $< -o $@


clean:
	rm -f *.o Main
