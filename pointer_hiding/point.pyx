# distutils: language=c++

from cython.operator cimport dereference as deref

from ._point cimport PointC


cdef int point_get_x(shared_ptr[PointC] point) nogil:
    return deref(point).x

cdef int point_get_y(const shared_ptr[PointC] point) nogil:
    return deref(point).y

cdef class Point:
    def __init__(self, int x, int y):
        deref(self.c).x = x
        deref(self.c).y = y

    cdef shared_ptr[PointC] get_ptr(self) nogil:
        return self.c

    @property
    def x(self) -> int:
        return deref(self.c).x

    @property
    def y(self) -> int:
        return deref(self.c).y
