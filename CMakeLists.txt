cmake_minimum_required(VERSION 3.0.0)
project(c_practice VERSION 0.1.0)

include(CTest)
enable_testing()


find_package(unofficial-sqlite3 CONFIG REQUIRED)
find_package(ZLIB REQUIRED)

add_executable(c_practice main.cpp)

target_link_libraries(c_practice PRIVATE unofficial::sqlite3::sqlite3 ZLIB::ZLIB)


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
