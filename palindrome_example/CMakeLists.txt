cmake_minimum_required(VERSION 3.6)
project(palindrome VERSION 1.0.0 LANGUAGES CXX)
# Retrieve the standard GNU installation paths
include(GNUInstallDirs)

add_subdirectory(src)

SET(CPACK_GENERATOR "DEB")
SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "MalikML") #required

INCLUDE(CPack)
