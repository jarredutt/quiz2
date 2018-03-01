all: build archive

build: College

College: collegemain.o course.o college.o
	g++ -Wall collegemain.o course.o college.o -o myexe
collegemain.o: collegemain.cc
	g++ -Wall -c collegemain.cc
course.o: course.cc
	g++ -Wall -c course.cc
college.o: college.cc
	g++ -Wall -c college.cc
clean:
	rm -f *.o core *.core
doc:
	@doxygen
	@open doxygen/html/index.html

archive: collegemain.cc course.cc college.cc makefile
	tar -cf archive.tar collegemain.cc course.cc college.cc

