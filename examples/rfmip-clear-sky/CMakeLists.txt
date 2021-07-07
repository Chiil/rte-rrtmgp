#
# This file is part of a C++ interface to the Radiative Transfer for Energetics (RTE)
#
FILE(GLOB sourcefiles_lw
    "../../examples/rfmip-clear-sky/rrtmgp_rfmip_lw.F90"
    "../../examples/rfmip-clear-sky/mo_rfmip_io.F90"
    "../../examples/*.F90")

FILE(GLOB sourcefiles_sw
    "../../examples/rfmip-clear-sky/rrtmgp_rfmip_sw.F90"
    "../../examples/rfmip-clear-sky/mo_rfmip_io.F90"
    "../../examples/*.F90")

include_directories(${INCLUDE_DIRS})

add_executable(rrtmgp_rfmip_lw ${sourcefiles_lw})
target_link_libraries(rrtmgp_rfmip_lw rte rte_kernels rrtmgp rrtmgp_kernels ${LIBS})

add_executable(rrtmgp_rfmip_sw ${sourcefiles_sw})
target_link_libraries(rrtmgp_rfmip_sw rte rte_kernels rrtmgp rrtmgp_kernels ${LIBS})
