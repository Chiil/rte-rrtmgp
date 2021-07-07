#
# This file is part of a C++ interface to the Radiative Transfer for Energetics (RTE)
#
FILE(GLOB sourcefiles_kernels "../rte/kernels/*.F90" "../rte/mo_rte_kind.F90")
FILE(GLOB sourcefiles "../rte/*.F90")

add_library(rte_kernels STATIC ${sourcefiles_kernels})

add_library(rte STATIC ${sourcefiles})
target_link_libraries(rte rte_kernels)
