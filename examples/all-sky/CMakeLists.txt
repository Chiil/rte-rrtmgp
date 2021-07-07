#
# This file is part of a C++ interface to the Radiative Transfer for Energetics (RTE)
#
FILE(GLOB sourcefiles "../../examples/all-sky/*.F90" "../../examples/*.F90" "../../extensions/cloud_optics/*.F90")

include_directories(${INCLUDE_DIRS})

add_executable(rrtmgp-allsky ${sourcefiles})
target_link_libraries(rrtmgp-allsky rte rte_kernels rrtmgp rrtmgp_kernels ${LIBS})
