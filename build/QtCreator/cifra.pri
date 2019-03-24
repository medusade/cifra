########################################################################
# Copyright (c) 1988-2019 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: cifra.pri
#
# Author: $author$
#   Date: 3/12/2019
#
# build QtCreator .pri file for cifra
########################################################################

########################################################################
# bn
#
# pkg-config --cflags --libs bn
#

# build bn INCLUDEPATH
#
build_bn_INCLUDEPATH += \

# build bn DEFINES
#
build_bn_DEFINES += \

# build bn FRAMEWORKS
#
build_bn_FRAMEWORKS += \

# build bn LIBS
#
build_bn_LIBS += \

########################################################################
# mp
#
# pkg-config --cflags --libs mp
#

# build mp INCLUDEPATH
#
build_mp_INCLUDEPATH += \

# build mp DEFINES
#
build_mp_DEFINES += \

# build mp FRAMEWORKS
#
build_mp_FRAMEWORKS += \

# build mp LIBS
#
build_mp_LIBS += \

########################################################################
# mb
#
# pkg-config --cflags --libs mb
#

# build mb INCLUDEPATH
#
build_mb_INCLUDEPATH += \

# build mb DEFINES
#
build_mb_DEFINES += \

# build mb FRAMEWORKS
#
build_mb_FRAMEWORKS += \

# build mb LIBS
#
build_mb_LIBS += \

########################################################################
# mbuint
#
# pkg-config --cflags --libs mbuint
#

# build mbuint INCLUDEPATH
#
build_mbuint_INCLUDEPATH += \

# build mbuint DEFINES
#
build_mbuint_DEFINES += \

# build mbuint FRAMEWORKS
#
build_mbuint_FRAMEWORKS += \

# build mbuint LIBS
#
build_mbuint_LIBS += \

########################################################################
# rostra
#
# pkg-config --cflags --libs rostra
#

# build rostra INCLUDEPATH
#
build_rostra_INCLUDEPATH += \

# build rostra DEFINES
#
build_rostra_DEFINES += \

# build rostra FRAMEWORKS
#
build_rostra_FRAMEWORKS += \

# build rostra LIBS
#
build_rostra_LIBS += \

########################################################################
# nadir
#
# pkg-config --cflags --libs nadir
#

# build nadir INCLUDEPATH
#
build_nadir_INCLUDEPATH += \

# build nadir DEFINES
#
build_nadir_DEFINES += \

# build nadir FRAMEWORKS
#
build_nadir_FRAMEWORKS += \

# build nadir LIBS
#
build_nadir_LIBS += \

########################################################################
# numera
#
# pkg-config --cflags --libs numera
#

# build numera INCLUDEPATH
#
build_numera_INCLUDEPATH += \

# build numera DEFINES
#
build_numera_DEFINES += \

# build numera FRAMEWORKS
#
build_numera_FRAMEWORKS += \

# build numera LIBS
#
build_numera_LIBS += \

########################################################################
# cifra

# build cifra INCLUDEPATH
#
build_cifra_INCLUDEPATH += \
$${build_numera_INCLUDEPATH} \
$${build_nadir_INCLUDEPATH} \
$${build_rostra_INCLUDEPATH} \
$${build_mbuint_INCLUDEPATH} \
$${build_mb_INCLUDEPATH} \
$${build_mp_INCLUDEPATH} \
$${build_bn_INCLUDEPATH} \


# build cifra DEFINES
#
build_cifra_DEFINES += \
$${build_bn_DEFINES} \
$${build_mp_DEFINES} \
$${build_mb_DEFINES} \
$${build_mbuint_DEFINES} \
$${build_rostra_DEFINES} \
$${build_nadir_DEFINES} \
$${build_numera_DEFINES} \


# build cifra FRAMEWORKS
#
build_cifra_FRAMEWORKS += \
$${build_numera_FRAMEWORKS} \
$${build_nadir_FRAMEWORKS} \
$${build_rostra_FRAMEWORKS} \
$${build_mbuint_FRAMEWORKS} \
$${build_mb_FRAMEWORKS} \
$${build_mp_FRAMEWORKS} \
$${build_bn_FRAMEWORKS} \


# build cifra LIBS
#
build_cifra_LIBS += \
$${build_numera_LIBS} \
$${build_nadir_LIBS} \
$${build_rostra_LIBS} \
$${build_mbuint_LIBS} \
$${build_mb_LIBS} \
$${build_mp_LIBS} \
$${build_bn_LIBS} \


