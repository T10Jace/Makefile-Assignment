#	Author: Jace Riley
#	File:   Makefile
#	Date:   September 22, 2023

CC = g++ 	# this is the compiler we are using

CFLAGS = -c -Wall -Wextra	# Compiles with all errors and warnings

TARGET = employee	# assigning employee as our target

all: $(TARGET)		# Target for building all

$(TARGET): main.o Employee.o Officer.o Supervisor.o				#target for linking all .o files and creating binary $(TARGET)
	$(CC) main.o Employee.o Officer.o Supervisor.o -o $(TARGET)

main.o: main.cpp		     # Compiles main.o from source (main.cpp)
	$(CC) $(CFLAGS) main.cpp

Employee.o: Employee.cpp Employee.h	 	# Compiles Employee.o from source (Employee.cpp)
	$(CC) $(CFLAGS) Employee.cpp

Officer.o: Officer.cpp Officer.h	 # Compiles Officer.o from source (Officer.cpp)
	$(CC) $(CFLAGS) Officer.cpp

Supervisor.o: Supervisor.cpp Supervisor.h	 # Compiles Supervisor.o from source (Supervisor.cpp)
	$(CC) $(CFLAGS) Supervisor.cpp

clean:						 # Removes all objects, emacs backups, and target
	$(RM) $(TARGET) *.o *~