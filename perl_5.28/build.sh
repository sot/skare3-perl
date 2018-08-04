#!/bin/bash
./Configure -des -Dprefix=${PREFIX} \
            -Duserelocatableinc \
            -Dusesitecustomize \
            -Udefault_inc_excludes_dot \
            -Dman1dir="${PREFIX}/share/man/man1" \
            -Dman3dir="${PREFIX}/share/man/man3" \
            -Dinstallsiteman1dir="${PREFIX}/share/man/man1" \
            -Dinstallsiteman3dir="${PREFIX}/share/man/man3" \
            -Dsiteman1dir="${PREFIX}/share/man/man1" \
            -Dsiteman3dir="${PREFIX}/share/man/man3" \
            -Dotherlibdirs="${PREFIX}/lib/perl " \
            -A prepend:ldflags="-L${PREFIX}/lib " \
            -A prepend:ccflags="-I${PREFIX}/include " \

make
#make test
make install

