# GSLIB 

[![Build Status](https://travis-ci.org/gslib/gslib.svg?branch=master)](https://travis-ci.org/gslib/gslib)

* Scalable Many-to-Many (neighborhood) gather-scatter collectives
* Robust GLL interpolation on hexahedral spectral element meshes




# Build Instructions
Msys64 compiler for windows is required, it contains gcc, fortran, GNU-make.

MPI on windows is required, download the two files: https://www.microsoft.com/en-us/download/details.aspx?id=105289

Set ENV CPATH and LIBRARY of MS-MPI for gcc complie. However, for MSVC of VS, the header path and lib path is "INCLUDE" and "LIB"

```
CPATH:C:\Program Files (x86)\Microsoft SDKs\MPI\Include
LIBRARY:C:\Program Files (x86)\Microsoft SDKs\MPI\Lib\x64
PATH:D:\Program_Professional\Microsoft MPI\Bin
```
The build system relies on GNU Make with the `make` command. To compile gslib just run the following command in git bash:

```
make
```

Different make options are available (see Makefile).

We can get gslib_windows\build\lib\libgs.lib for windows.

# Differences
The Makefile has been modified. The Makefile_Linux serves as the original Makefile for the Linux system. For the differences, please refer to the windows.patch.

# Applications

**\[1]&#160;[Nek5000](https://nek5000.mcs.anl.gov/)**: Nek5000 open-source, spectral element code.

**\[2]&#160;[CEED](http://ceed.exascaleproject.org/)**: Co-design center for Efficient Exascale Discretizations.

**\[3]&#160;[Nektar++](http://www.nektar.info)**: Nektar++ open-source spectral/hp element code.

**\[4]&#160;[Libparanumal](https://github.com/paranumal/libparanumal)**: Accelerated finite element flow solvers .
