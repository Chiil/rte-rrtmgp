# MacBook using GCC compiler from homebrew
set(ENV{CC}  gcc-11)      # C compiler for serial build
set(ENV{CXX} g++-11)      # C++ compiler for serial build
set(ENV{FC}  gfortran-11) # Fortran compiler for parallel build

set(USER_FC_FLAGS "-ffree-line-length-none -m64 -std=f2008 -march=native -fbounds-check -fbacktrace -finit-real=nan -DUSE_CBOOL -pedantic -g -Wall")
set(USER_FC_FLAGS_RELEASE "-DNDEBUG -O3 -march=native")
set(USER_FC_FLAGS_DEBUG "-O0 -g -Wall -Wno-unknown-pragmas")

set(NETCDF_INCLUDE_DIR "/usr/local/include")
set(NETCDF_LIB_C       "/usr/local/lib/libnetcdf.dylib")
set(NETCDF_LIB_FORTRAN "/usr/local/lib/libnetcdff.dylib")
set(HDF5_LIB_1         "/usr/local/lib/libhdf5.dylib")
set(HDF5_LIB_2         "/usr/local/lib/libhdf5_hl.dylib")
set(SZIP_LIB           "/usr/local/lib/libsz.dylib")
set(LIBS ${NETCDF_LIB_CPP} ${NETCDF_LIB_C} ${NETCDF_LIB_FORTRAN} ${HDF5_LIB_2} ${HDF5_LIB_1} ${SZIP_LIB} m z curl)
set(INCLUDE_DIRS ${NETCDF_INCLUDE_DIR})
