from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize("pointer_hiding/point.pyx", language="c++")
)
