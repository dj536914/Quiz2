all: build doczip
build: myexe collegemain.o college.o course.o
myexe: collegemain.o college.o course.o
	g++ -o myexe collegemain.o college.o course.o
collegemain.o: collegemain.cc
	g++ -c collegemain.cc
college.o: college.h college.cc
	g++ -c college.cc
course.o: course.h course.cc
	g++ -c course.cc
doczip:
	tar -cf doczip.tar node.h college.cc college.h collegemain.cc Makefile course.cc \
		course.h tarray.h
clean:
	\rm *.o *.class a.out myexe
doc:
	doxygen config.txt
