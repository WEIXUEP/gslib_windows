cmake_minimum_required(VERSION 3.14)
project(gslib C CXX)

# Set CMake policy to avoid warnings
if(POLICY CMP0177)
  cmake_policy(SET CMP0177 NEW)
endif()

# Configure compiler flags
set(CMAKE_C_FLAGS_RELEASE "-O2")
# set(CMAKE_Fortran_FLAGS_RELEASE "-O2")

# Set library names and prefixes
set(LIBNAME "gs")
set(CPREFIX "gslib_")
set(FPREFIX "fgslib_")

# Define source directories
set(SRCROOT ".")
set(TESTDIR "${SRCROOT}/tests")
set(FTESTDIR "${TESTDIR}/fortran")
set(SRCDIR "${SRCROOT}/src")
set(INCDIR "${SRCROOT}/src")
set(LIBDIR "${SRCROOT}/lib")

<<<<<<< HEAD
=======
# Configure installation directory
if(DEFINED DESTDIR)
  set(INSTALL_ROOT "${DESTDIR}")
else()
  set(INSTALL_ROOT "${SRCROOT}/build")
endif()

>>>>>>> 85bd52113965beadd31900026355e7b6598c9f1c
# Feature configuration options
option(MPI "Enable MPI support" ON)
option(ADDUS "Add underscore prefix" ON)
option(USREXIT "Enable user exit functionality" OFF)
option(NBC "Enable NBC support" OFF)
option(BLAS "Enable BLAS integration" OFF)
option(MKL "Enable MKL optimization" OFF)
option(STATIC "Build static library" ON)
option(SHARED "Build shared library" OFF)

# Configure compilers with MPI support
if(MPI)
  find_package(MPI REQUIRED)
  # set(CMAKE_C_COMPILER ${MPI_C_COMPILER})
  # set(MPI_C_COMPILER ${MPI_C_COMPILER})
  # set(CMAKE_Fortran_COMPILER ${MPI_Fortran_COMPILER})
endif()

# Define preprocessor macros
add_definitions(-DGSLIB_PREFIX=${CPREFIX})
add_definitions(-DGSLIB_FPREFIX=${FPREFIX})
add_definitions(-DGSLIB_USE_GLOBAL_LONG_LONG)

if(MPI)
  add_definitions(-DGSLIB_USE_MPI)
endif()

if(ADDUS)
  add_definitions(-DGSLIB_UNDERSCORE)
endif()

if(USREXIT)
  add_definitions(-DGSLIB_USE_USR_EXIT)
endif()

if(NBC)
  add_definitions(-DGSLIB_USE_NBC)
endif()

if(NOT BLAS)
  add_definitions(-DGSLIB_USE_NAIVE_BLAS)
elseif(BLAS AND MKL)
  add_definitions(-DGSLIB_USE_CBLAS)
  add_definitions(-DGSLIB_USE_MKL)
endif()

# Source file groups
set(GS
  ${SRCDIR}/gs.c
  ${SRCDIR}/sort.c
  ${SRCDIR}/sarray_transfer.c
  ${SRCDIR}/sarray_sort.c
  ${SRCDIR}/gs_local.c
  ${SRCDIR}/fail.c
  ${SRCDIR}/crystal.c
  ${SRCDIR}/comm.c
  ${SRCDIR}/tensor.c
)

set(FWRAPPER
  ${SRCDIR}/fcrystal.c
  ${SRCDIR}/findpts.c
)

set(INTP
  ${SRCDIR}/findpts_local.c
  ${SRCDIR}/obbox.c
  ${SRCDIR}/poly.c
  ${SRCDIR}/lob_bnd.c
  ${SRCDIR}/findpts_el_3.c
  ${SRCDIR}/findpts_el_2.c
)

# Build libraries
if(STATIC)
  add_library(${LIBNAME} STATIC ${GS} ${FWRAPPER} ${INTP})
endif()

if(SHARED)
  add_library(${LIBNAME} SHARED ${GS} ${FWRAPPER} ${INTP})
endif()

# Set library properties
install(TARGETS ${LIBNAME} DESTINATION ${INSTALL_ROOT}/lib)
install(DIRECTORY ${SRCDIR}/ DESTINATION ${INSTALL_ROOT}/include/gslib FILES_MATCHING PATTERN "*.h")

# C test configurations
# set(TESTS
#   ${TESTDIR}/sort_test.c
#   ${TESTDIR}/sort_test2.c
#   ${TESTDIR}/sarray_sort_test.c
#   ${TESTDIR}/comm_test.c
#   ${TESTDIR}/crystal_test.c
#   ${TESTDIR}/sarray_transfer_test.c
#   ${TESTDIR}/gs_test.c
#   ${TESTDIR}/gs_test_gop_blocking.c
#   ${TESTDIR}/gs_test_gop_nonblocking.c
#   ${TESTDIR}/gs_unique_test.c
#   ${TESTDIR}/findpts_el_2_test.c
#   ${TESTDIR}/findpts_el_2_test2.c
#   ${TESTDIR}/findpts_el_3_test.c
#   ${TESTDIR}/findpts_el_3_test2.c
#   ${TESTDIR}/findpts_local_test.c
#   ${TESTDIR}/findpts_test.c
#   ${TESTDIR}/findpts_test_ms.c
#   ${TESTDIR}/poly_test.c
#   ${TESTDIR}/lob_bnd_test.c
#   ${TESTDIR}/obbox_test.c
# )

# foreach(test ${TESTS})
#   get_filename_component(test_name ${test} NAME_WE)
#   add_executable(${test_name} ${test})
#   target_link_libraries(${test_name} ${LIBNAME} m)
#   add_test(NAME ${test_name} COMMAND ${test_name})
# endforeach()

>>>>>>> 85bd52113965beadd31900026355e7b6598c9f1c
# Fortran test configurations (currently disabled)
# set(FTESTS
#   ${FTESTDIR}/f-igs.f
# )

# foreach(ftest ${FTESTS})
#   get_filename_component(ftest_name ${ftest} NAME_WE)
#   add_executable(${ftest_name} ${ftest})
#   set_target_properties(${ftest_name} PROPERTIES LINKER_LANGUAGE Fortran)
#   target_link_libraries(${ftest_name} ${LIBNAME})
#   add_test(NAME ${ftest_name} COMMAND ${ftest_name})
# endforeach()