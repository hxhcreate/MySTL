cmake_minimum_required(VERSION 3.20)
project(MySTL)

set(CMAKE_CXX_STANDARD 11)

add_executable(MySTL construct..h allocator.h main.cpp)
