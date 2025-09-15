#!/bin/bash
# spack external find binutils zlib xz cmake ncurses python diffutils pkgconf zlib
spack install -v hdf5@1.12.3+fortran+hl+mpi+cxx api=v110 %intel ^intel-oneapi-mpi++classic-names
spack install -v hdf5@1.12.3+fortran+hl+mpi+cxx api=v110 %gcc ^intel-oneapi-mpi+generic-names
spack install -v hypre@2.33.0+mpi+openmp %nvhpc ^[virtuals=mpi,blas,lapack] nvhpc
spack install -v hypre@2.28.0%intel+fortran+mpi ^intel-oneapi-mpi++classic-names ^[virtuals=blas,lapack] intel-oneapi-mkl
spack install -v kokkos@m4.7.00 +cuda +wrapper cuda_arch=86 %nvhpc
spack install -v petsc@3.19.5+mpi+hypre+mumps+fortran %intel ^intel-oneapi-mkl ^intel-oneapi-mpi++classic-names cppflags="-gcc-name=/usr/bin/gcc-12" cflags="-gcc-name=/usr/bin/gcc-12"
spack install -v  iwyu@0.23%clang ^llvm@19
