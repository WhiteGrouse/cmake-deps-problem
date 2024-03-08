cmake_minimum_required(VERSION 3.27)

set(DEPS_DIR ../deps)
list(APPEND CMAKE_PREFIX_PATH ${DEPS_DIR})

project(example3)
set(CMAKE_CXX_STANDARD 20)

add_executable(${CMAKE_PROJECT_NAME} main.cpp)

#find_package(example1)
find_package(example2 REQUIRED)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE example2::example2)

