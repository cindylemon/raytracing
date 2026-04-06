CXX = g++
CXXFLAGS = -Wall -Wextra -O2

all: image.ppm

raytracer: main.cc
	$(CXX) $(CXXFLAGS) -o raytracer main.cc

image.ppm: raytracer
	./raytracer > image.ppm

clean:
	rm -f raytracer image.ppm