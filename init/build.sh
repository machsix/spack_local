#!/bin/bash
spack external find binutils zlib xz cmake ncurses python diffutils pkgconf zlib
spack install hdf5@1.12.3+fortran+hl+mpi api=v110 %intel ^intel-oneapi-mpi++classic-names
spack install petsc@3.19.5+mpi+hypre+mumps+fortran %intel ^intel-oneapi-mkl ^intel-oneapi-mpi++classic-names
spack mark -e hypre parmetis mumps
spack install -v hypre+mpi%nvhpc ^[virtuals=mpi,blas,lapack] nvhpc
spack install -v hypre@2.33.0+mpi+openmp%nvhpc ^[virtuals=mpi,blas,lapack] nvhpc
spack install kokkos@master +cuda +wrapper cuda_arch=86 %nvhpc
