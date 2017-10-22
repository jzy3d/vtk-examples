if(NOT Module_WikiExamples)
  if(NOT CMAKE_LIBRARY_OUTPUT_DIRECTORY)
    set (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${WikiExamples_BINARY_DIR}/bin CACHE INTERNAL "Single output directory for building all libraries.")
  endif()
  if(NOT CMAKE_RUNTIME_OUTPUT_DIRECTORY)
    set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${WikiExamples_BINARY_DIR}/bin CACHE INTERNAL "Single output directory for building all executables.")
  endif()
  mark_as_advanced(CMAKE_LIBRARY_OUTPUT_DIRECTORY CMAKE_RUNTIME_OUTPUT_DIRECTORY)
else()
    set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${VTK_BINARY_DIR}/bin)
endif()
message(STATUS "VTKWikiExamples: Example executables are stored in ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
