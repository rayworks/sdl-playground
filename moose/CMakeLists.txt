# Specify the minimum version for CMake

cmake_minimum_required(VERSION 2.8)

# Project's name
project(moose)

find_package(SDL2 REQUIRED)
message(status "found SDL2 ${SDL2_LIBRARIES}")
message(status "found SDL2 includes ${SDL2_INCLUDE_DIRS}")

# Link the library
set (PROJECT_LINK_LIBS libSDL2.a)
link_directories(/usr/local/lib)

# https://stackoverflow.com/questions/7461000/handling-header-files-dependencies-with-cmake
# "Apparently cmake removes system include paths from the dependency trees"
# include the library header files
set(LIB_HEADER /usr/local/Cellar/sdl2/2.0.8/include)
include_directories (${LIB_HEADER})

# The following folder will be included
include_directories(include)

file(GLOB SOURCES "src/*")
add_executable(moose ${SOURCES})

target_link_libraries(moose ${PROJECT_LINK_LIBS})
