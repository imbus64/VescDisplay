SOURCES = $(wildcard SVD/*.c) $(wildcard SVD/*.h) 
SOURCES+= $(wildcard SVD/*.cpp) $(wildcard SVD/*.hpp) 
SOURCES+= $(wildcard SVD/*.ino)

format: $(SOURCES)
	clang-format -i $^

init: 
	git submodule update --init --recursive