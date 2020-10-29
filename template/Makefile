# Mein tolles Makefile

# Compile flags (options)
CFLAGS=-Og -std=c++11 -Wall -Werror -I"src/include/"

# Linker flags
LDFLAGS=-lrt -pthread #-lpigpio


### make-targets ###
all: hello hello2
	@echo "\n# Alles fertig!"

clean:
	@rm bin/* a.out -fv

hello: hello.o
	@echo "\n# Linke hello..."
	g++ -o bin/hello bin/hello.o bin/blub.o $(LDFLAGS)
	
hello.o: src/hello.cpp
	@echo "\n# Kompiliere hello..."
	g++ -c src/hello.cpp -o bin/hello.o $(CFLAGS)
	g++ -c src/blub.cpp -o bin/blub.o $(CFLAGS)

# compilation and linking combined into one command
hello2:
	@echo "\n # Kompiliere & linke hello..."
	g++ -o bin/hello2 src/hello.cpp src/blub.cpp $(LDFLAGS) $(CFLAGS)

