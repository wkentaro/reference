#include "Python.h"

extern int add(int x, int y);
extern void hello(const char* name);

PyObject* test_add(PyObject* self, PyObject* args) {
    int x, y, g;
    if (!PyArg_ParseTuple(args, "ii", &x, &y))
        return NULL;
    g = add(x, y);
    return Py_BuildValue("i", g);
}

PyObject* test_hello(PyObject* self, PyObject* args, PyObject* kw) {
    const char* name = NULL;

    static char* argnames[] = {"args", "name", NULL};

    if (!PyArg_ParseTupleAndKeywords(args, kw, "|ss", argnames, &name))
        return NULL;

        hello(name);
        return Py_BuildValue("");
}

static PyMethodDef testmethods[] = {
    {"add", (PyCFunction)test_add, METH_VARARGS},
    {"hello", (PyCFunction)test_hello, METH_VARARGS | METH_KEYWORDS},
    {NULL},
};

void inittest() {
    Py_InitModule("test", testmethods);
}
