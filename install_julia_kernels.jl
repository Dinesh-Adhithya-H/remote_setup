#!/bin/env julia
println("Julia version: ", VERSION)

import Pkg
Pkg.add("IJulia")
Pkg.update("IJulia")
Pkg.build("IJulia")



using IJulia

println("installing kernels")

installkernel("Julia",               "--project=@.")
#installkernel("Julia (depwarn)",     "--project=@.", "--depwarn=yes", specname = "julia-depwarn")
#installkernel("Julia (4 threads)",   "--project=@.", "--threads=4",   specname = "julia-4threads")
#installkernel("Julia (32 threads)",  "--project=@.", "--threads=32",  specname = "julia-32threads")
#installkernel("Julia (100 threads)", "--project=@.", "--threads=100", specname = "julia-100threads")

println("done")
