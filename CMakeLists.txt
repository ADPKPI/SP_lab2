cmake_minimum_required(VERSION 3.10)

project(CalculatorProject)

add_library(calculator STATIC calculator.cpp)

add_executable(calculator_app main.cpp)

target_link_libraries(calculator_app calculator)

target_include_directories(calculator_app PRIVATE ${PROJECT_SOURCE_DIR})
