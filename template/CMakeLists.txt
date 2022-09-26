cmake_minimum_required(VERSION 3.19)

## Target name
set(PRJ_NAME Ameise)
set(PRJ_ROOT ${CMAKE_CURRENT_SOURCE_DIR})
project(${PRJ_NAME} LANGUAGES CXX)

## Generate executable
add_executable(${PRJ_NAME})

## Target properties
set_target_properties(${PRJ_NAME} PROPERTIES   
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
    CXX_EXTENSIONS ON
)

# Set sources
target_sources(${PRJ_NAME} PRIVATE
    ${PRJ_ROOT}/src/hello.cpp
)

# Set include directories
target_include_directories(${PRJ_NAME} PRIVATE
    ${PRJ_ROOT}/src/include
)

# Set compiler options
target_compile_options(${PRJ_NAME} PRIVATE
    -Og
    -Wall
    -Werror
)

# Setup linker options
target_link_options(${PRJ_NAME} PRIVATE
    #-lpigpio
    -lrt 
    -pthread
)