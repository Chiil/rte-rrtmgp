#
# This file is part of a C++ interface to the Radiative Transfer for Energetics (RTE)
#
FILE(GLOB sourcefiles_kernels "../rrtmgp/kernels/*.F90")
FILE(GLOB sourcefiles "../rrtmgp/*.F90")

add_library(rrtmgp_kernels STATIC ${sourcefiles_kernels})

add_library(rrtmgp STATIC ${sourcefiles})
target_link_libraries(rrtmgp rrtmgp_kernels)
