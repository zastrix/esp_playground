#
# API:
# https://cmake.org/cmake/help/v3.11/manual/cmake-commands.7.html
#

cmake_minimum_required(VERSION 3.8)

# ~~~ collection of files that are somehow related
# project(<PROJECT-NAME>
#        [VERSION <major>[.<minor>[.<patch>[.<tweak>]]]]
#        [DESCRIPTION <project-description-string>]
#        [LANGUAGES <language-name>...] )
project(hello_world)

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Find the stuff

# ~~~ Header search paths
set(ESP_LIBS /Users/dgmiller/esp)
set(FREERTOS_DIR ${ESP_LIBs}/esp-idf/components/freertos/include/freertos)

include_directories( ${ESP_LIBs}/esp-idf/components/esp32/include )

include_directories(${FREERTOS_DIR})
include_directories(${FREERTOS_DIR}/include/freertos)


# ~~~ Adding libraries!!
# find_package(<package> [version] [EXACT] [QUIET] [MODULE]
#              [REQUIRED] [[COMPONENTS] [components...]]
#              [OPTIONAL_COMPONENTS components...]
#              [NO_POLICY_SCOPE])
#find_package (my_library COMPONENTS REQUIRED component1 component2  OPTIONAL_COMPONENTS opt_component)


set(SOURCE_FILES
        main/hello_world_main.c)


# add_library (my_library STATIC|SHARED|MODULE my_source.cpp)

# Adding Boost
#find_package(Boost)
#IF (Boost_FOUND)
#    include_directories(${Boost_INCLUDE_DIR})
#endif()
#set (Boost_USE_STATIC_LIBS ON) # enable dynamic linking
#set (Boost_USE_MULTITHREAD ON)  # enable multithreading
#find_package (Boost COMPONENTS REQUIRED chrono filesystem)




# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Compile and Link stuff

# set(<variable> <value>... [PARENT_SCOPE])
# set (MY_VAR "hello")
# set (OTHER_VAR "${MY_VAR} world!")
set(CMAKE_CXX_STANDARD 11)

# ~~~ for compiler warnings/errors
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1y -Wall")


# add_executable(<name> [WIN32] [MACOSX_BUNDLE]
#                [EXCLUDE_FROM_ALL]
#                [source1] [source2 ...])
add_executable(hello_world ${SOURCE_FILES})

target_link_libraries (hello_world ESP_LIBS)


#include_directories("/usr/include/SDL2")
#target_link_libraries(hello_world "/usr/lib/x86_64-linux-gnu/libSDL.so")