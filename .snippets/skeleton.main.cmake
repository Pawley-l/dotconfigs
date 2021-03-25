cmake_minimum_required(VERSION 3.10)

project(<++>)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

file(GLOB_RECURSE SRC src/*.cpp)
include_directories(include)

add_executable(<++> ${SRC})
