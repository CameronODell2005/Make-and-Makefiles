######################################################
# Name: Cameron O'Dell
# File: Makefile
# 2-20-2026
# A Makefile for the Employee program.
######################################################

########################
# Variable Definitions #
########################

# C++ compiler
CC = g++

# Name of the executable
TARGET = Employee

# Compile with object file generation with all warnings enabled.
CFLAGS = -c -Wall -Wextra

# Object files required
OBJS = main.o Employee.o Officer.o Supervisor.o


######################
# Target Definitions #
######################

# Default target: create executable
all: $(TARGET)

# Link all object files into final exe
$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

# Compile main.cpp to main.o
main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

# Compile Employee.cpp to Employee.o
Employee.o: Employee.cpp
	$(CC) $(CFLAGS) Employee.cpp

# Compile Officer.cpp to Officer.o
Officer.o: Officer.cpp
	$(CC) $(CFLAGS) Officer.cpp

# Compile Supervisor.cpp to Supervisor.o
Supervisor.o: Supervisor.cpp
	$(CC) $(CFLAGS) Supervisor.cpp

# Cleanup
clean:
	rm -f *.o *~ $(TARGET)