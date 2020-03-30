# Debian package creation out of a C++ project
This example will show how to create a debian package (.deb) out of CMake-C++ program, which can be installed as an Ubuntu application.

The C++ program was taken from ["Example of project structure for a C++ project with cmake"](https://github.com/edumentab/cpp-project-example)

Creation of the debian package will be executed on the executable example `palindrome`

## Create debian package using CPack
CPack is a cross-platform software packaging tool, which is easy to use and very powerful.

With CMake version >= 2.4.2 CPack was distributed with CMake.

The [generators](https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/PackageGenerators) concept is used from CMake, to abstract package generation on specific
platforms, and it can be used with or without CMake.[[1]](https://gitlab.kitware.com/cmake/community/-/wikis/doc/cpack/Packaging-With-CPack)

## CMake and CPack
with the following 3 lines in [palindrome_example/CMakeLists.txt](https://github.com/malikML/cpp-cmake-cpack-debian/blob/master/palindrome_example/CMakeLists.txt) the work is done to pack the `palindrome` programm into a .dep package
```make
SET(CPACK_GENERATOR "DEB")
SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "MalikML") #required
INCLUDE(CPack)
``` 
run the `build.sh` in the root to build and pack the program :)