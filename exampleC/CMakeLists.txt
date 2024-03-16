cmake_minimum_required(VERSION 3.27)

project(exampleC)
set(CMAKE_CXX_STANDARD 20)

add_library(${CMAKE_PROJECT_NAME} STATIC lib.cpp)

target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>)

set(CMAKE_INSTALL_PREFIX ../../deps/${CMAKE_PROJECT_NAME})

install(TARGETS ${CMAKE_PROJECT_NAME}
        EXPORT ${CMAKE_PROJECT_NAME}-config
        ARCHIVE DESTINATION lib)

install(EXPORT ${CMAKE_PROJECT_NAME}-config
        NAMESPACE ${CMAKE_PROJECT_NAME}::
        DESTINATION lib/cmake/${CMAKE_PROJECT_NAME})

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/
        DESTINATION include/${CMAKE_PROJECT_NAME})
