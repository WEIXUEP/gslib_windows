# GSLIB 

[![Build Status](https://travis-ci.org/gslib/gslib.svg?branch=master)](https://travis-ci.org/gslib/gslib)

* Scalable Many-to-Many (neighborhood) gather-scatter collectives
* Robust GLL interpolation on hexahedral spectral element meshes




# Build Instructions
Visual Studio is required, it contains cmake, nmake for windows.

MPI on windows is required, download the two files: https://www.microsoft.com/en-us/download/details.aspx?id=105289

Set ENV "INCLUDE", "LIB" and "PATH" of MS-MPI for MSVC complie.
```
INCLUDE:C:\Program Files (x86)\Microsoft SDKs\MPI\Include
LIB:C:\Program Files (x86)\Microsoft SDKs\MPI\Lib\x64
PATH:D:\Program_Professional\Microsoft MPI\Bin
```

The gslib will be complied using "x64 Native Tools Command Prompt for VS 2022" cmd. Create a new folder "build" in the gslib directory, and use "cd" command to go to the build folder. If you have multiple cmake program, make sure the "cmake" provided by VS is used. 
```
K:\Project_WXP\20241131_FEM_Palace\FEM_GPU\gslib_windows\build>where cmake
D:\Program_Professional\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe
D:\Program_Professional\CMake\bin\cmake.exe
D:\Program_Professional\msys64\ucrt64\bin\cmake.exe
D:\Program_Professional\msys64\mingw64\bin\cmake.exe
```

I strongly recommend removing the other cmake program paths for the system variable PATH temporarily. 
```
K:\Project_WXP\20241131_FEM_Palace\FEM_GPU\gslib_windows\build>where cmake
D:\Program_Professional\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe
```

Then run cmake command:
```
cmake -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release ..
```

The build system relies on nmake with the `nmake` command. To compile gslib just run the following command in bash:

```
nmake
```

Different make options are available (see CMakeLists.txt). We can get gslib_windows\build\gs.lib for windows MSVC.

This CMakeLists.txt can not auto generate "include" and "lib" folders, I copy this two folders generating by mingw64 to the "gslib_windows" folder. Then you can copy "gslib_windows\build\gs.lib" to "gslib_windows\lib\gs.lib "to get the final "include" and "lib" folders.


# Applications

**\[1]&#160;[Nek5000](https://nek5000.mcs.anl.gov/)**: Nek5000 open-source, spectral element code.

**\[2]&#160;[CEED](http://ceed.exascaleproject.org/)**: Co-design center for Efficient Exascale Discretizations.

**\[3]&#160;[Nektar++](http://www.nektar.info)**: Nektar++ open-source spectral/hp element code.

**\[4]&#160;[Libparanumal](https://github.com/paranumal/libparanumal)**: Accelerated finite element flow solvers .
