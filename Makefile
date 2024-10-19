CC = g++
CFLAGS = -Iinclude -g
LIBRARY = libcalculator.a
TARGET = calculator_app

SRC = src/calculator.cpp src/main.cpp
OBJ = $(SRC:.cpp=.o)

all: $(LIBRARY) $(TARGET)

$(LIBRARY): src/calculator.o
	ar rcs $(LIBRARY) src/calculator.o

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET) $(LIBRARY)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f src/*.o $(TARGET) $(LIBRARY)
