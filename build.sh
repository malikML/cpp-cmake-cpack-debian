#!/bin/bash -x

mkdir palindrome_example/build
pushd palindrome_example/build
cmake ..
cmake --build .
cpack

echo
echo you can install the package with the following cmd:
echo
echo sudo apt install $PWD/*.deb
echo
echo and then try palindrome yesey nono