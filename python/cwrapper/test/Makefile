all:
	gcc -fPIC -o test.o -c test.c
	gcc -fPIC -I/usr/local/Cellar/python/2.7.8/Frameworks/Python.framework/Versions/Current/include/python2.7 -o testWrapper.o -c testWrapper.c
	gcc -undefined dynamic_lookup -bundle test.o testWrapper.o -o testmodule.so
	python -c "import test; print test.add(1, 2); test.hello('${USER}');"
