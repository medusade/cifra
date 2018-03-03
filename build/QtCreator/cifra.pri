########################################################################
# Copyright (c) 1988-2018 $organization$
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
#   Date: 3/2/2018
#
# build QtCreator .pri file for cifra
########################################################################

########################################################################
# rostra
#
# pkg-config --cflags --libs rostra
#
build_rostra_INCLUDEPATH += \

build_rostra_DEFINES += \

build_rostra_LIBS += \

########################################################################
# nadir
#
# pkg-config --cflags --libs nadir
#
build_nadir_INCLUDEPATH += \

build_nadir_DEFINES += \

build_nadir_LIBS += \

########################################################################
# bn
#
# pkg-config --cflags --libs bn
#
build_bn_INCLUDEPATH += \

build_bn_DEFINES += \

build_bn_LIBS += \

########################################################################
# mp
#
# pkg-config --cflags --libs mp
#
build_mp_INCLUDEPATH += \

build_mp_DEFINES += \

build_mp_LIBS += \

########################################################################
# mpinteger
#
# pkg-config --cflags --libs mpinteger
#
build_mpinteger_INCLUDEPATH += \

build_mpinteger_DEFINES += \

build_mpinteger_LIBS += \

########################################################################
# cifra
build_cifra_INCLUDEPATH += \
$${build_nadir_INCLUDEPATH} \
$${build_rostra_INCLUDEPATH} \


build_cifra_DEFINES += \
$${build_rostra_DEFINES} \
$${build_nadir_DEFINES} \


build_cifra_LIBS += \
$${build_nadir_LIBS} \
$${build_rostra_LIBS} \
