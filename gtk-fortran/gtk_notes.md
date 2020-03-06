开始学习gtk-fortran库的使用，开始的时候花费了2个小时来按照测试案例，主要是不知道如何把默认的ifort编辑器变成gfortran，毕竟我还是多数情况下使用gfortran，而不是ifort。

通过查找cmake的使用文档，发现在运行cmake的时候加上*-D CMAKE_Fortran_COMPILER=gfortran*可以解决问题。对于macos来说，有效的编译命令为

cmake .. -D CMAKE_Fortran_COMPILER=gfortran -D EXCLUDE_PLPLOT=true


而且值得注意的是GNU 9.2.0版本不行， 只有GNU 7.5.0版本才可以通过编译

另外一点需要注意的是， 在macos中，运行make install后，需要更改/usr/local/lib/pkgconfig/gtk-3-fortran.pc文件， 把

Libs: -Xlinker -R${libdir} -l${libname}

改为

Libs: -Xlinker -L${libdir} -l${libname}


编译程序时可以运用

gfortran <name>.f90 -o <name> $(pkg-config --cflags --libs gtk-3-fortran)

进行编译
