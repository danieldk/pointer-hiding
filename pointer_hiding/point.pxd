from libcpp.memory cimport shared_ptr

cdef struct PointC

cdef int point_get_x(shared_ptr[PointC] point) nogil
cdef int point_get_y(shared_ptr[PointC] point) nogil

cdef class Point:
    cdef shared_ptr[PointC] c

    cdef shared_ptr[PointC] get_ptr(self) nogil
