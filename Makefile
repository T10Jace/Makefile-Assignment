CC = g++
CFLAGS = -c -Wall -Wextra

TARGET = employee

all: $(TARGET)

$(TARGET): main.o Employee.o Officer.o Supervisor.O
	$(CC) $^ -o $@

main.o: main.cpp
	$(CC) $(CFLAGS) $< -o $@

Employee.o: Employee.cpp
	$(CC) $(CFLAGS) $< -o $@

Officer.o: Officer.cpp
	$(CC) $(CFLAGS) $< -o $@

Supervisor.o: Supervisor.cpp
	$(CC) $(CFLAGS) $< -o $@

clean:
	$(RM) (TARGET) *.o *~