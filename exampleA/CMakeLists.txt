cmake_minimum_required(VERSION 3.27)

set(DEPS_DIR ../deps)
list(APPEND CMAKE_PREFIX_PATH ${DEPS_DIR})

project(exampleA)
set(CMAKE_CXX_STANDARD 20)

add_executable(${CMAKE_PROJECT_NAME} main.cpp)

#find_package(exampleC)
find_package(exampleB REQUIRED)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE exampleB::exampleB)

