#For header files, that's quite a normal thing to do - you just need to add the
#CMAKE_CURRENT_BINARY_DIR to your include directories.
#
#For .cpp files, you can write your target so that it is referencing the source
#file in the binary directory. I.e.:
#
#configure_file(
#  ${CMAKE_CURRENT_SOURCE_DIRECTORY}/file1.cpp.in
#  ${CMAKE_CURRENT_BINARY_DIRECTORY}/file1.cpp COPYONLY)
#add_executable( target1 ${CMAKE_CURRENT_BINARY_DIRECTORY}/file1.cpp)
#
#Is that sufficient for your needs?
#
#If you rather need a real wildcard way to override arbitrary source files,
#then you're probably out of luck. You could still write a wrapper around
#add_executable and add_library that inspects source directory and binary
#directory, but that might not be worth the effort...
#
#  Johannes
