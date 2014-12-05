Use C function in Python
====

How to use
```bash
$ python
>>> import test
>>> test.add(1, 2)
3
>>> test.hello('Python')
Hello, Python!
```

How to compile
---

```bash
$ make
$ # gcc -fPIC -o test.o -c test.c
$ # gcc -fPIC -I/usr/local/Cellar/python/2.7.8/Frameworks/Python.framework/Versions/Current/include/python2.7 -o testWrapper.o -c testWrapper.c
$ # gcc -undefined dynamic_lookup -bundle test.o testWrapper.o -o testmodule.so
```

Link
---
http://www.wkentaro.com/blog/python/2014/10/11/c-python/
