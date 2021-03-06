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
#   Date: 3/12/2019, 12/26/2020
#
# Os specific QtCreator .pri file for cifra
########################################################################
UNAME = $$system(uname)

contains(UNAME,Darwin) {
CIFRA_OS = macosx
} else {
contains(UNAME,Linux) {
CIFRA_OS = linux
} else {
CIFRA_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,CIFRA_OS) {
CIFRA_BUILD = $${CIFRA_OS}
} else {
CIFRA_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,CIFRA_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(CIFRA_OS,macosx) {
} else {
contains(CIFRA_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(CIFRA_OS,windows) {
} else {
} # contains(CIFRA_OS,windows)
} # contains(CIFRA_OS,linux)
} # contains(CIFRA_OS,macosx)

########################################################################
# bn
BN_THIRDPARTY_PKG_MAKE_BLD = $${BN_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
BN_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${BN_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
BN_THIRDPARTY_PKG_BLD = $${BN_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${BN_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_PKG_BLD = $${OTHER_BLD}/$${BN_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_PRJ_BLD = $${OTHER_BLD}/$${BN_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#BN_LIB = $${BN_THIRDPARTY_PKG_MAKE_BLD}/lib
BN_LIB = $${BN_THIRDPARTY_PRJ_MAKE_BLD}/lib
#BN_LIB = $${BN_THIRDPARTY_PKG_BLD}/lib
#BN_LIB = $${BN_THIRDPARTY_PRJ_BLD}/lib
#BN_LIB = $${BN_PKG_BLD}/lib
#BN_LIB = $${BN_PRJ_BLD}/lib
#BN_LIB = $${CIFRA_LIB}

# bn LIBS
#
bn_LIBS += \
-L$${BN_LIB}/lib$${BN_NAME} \
-L$${BN_LIB} \
-l$${BN_NAME} \

########################################################################
# mp
MP_THIRDPARTY_PKG_MAKE_BLD = $${MP_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
MP_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${MP_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
MP_THIRDPARTY_PKG_BLD = $${MP_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${MP_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_PKG_BLD = $${OTHER_BLD}/$${MP_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_PRJ_BLD = $${OTHER_BLD}/$${MP_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#MP_LIB = $${MP_THIRDPARTY_PKG_MAKE_BLD}/lib
MP_LIB = $${MP_THIRDPARTY_PRJ_MAKE_BLD}/lib
#MP_LIB = $${MP_THIRDPARTY_PKG_BLD}/lib
#MP_LIB = $${MP_THIRDPARTY_PRJ_BLD}/lib
#MP_LIB = $${MP_PKG_BLD}/lib
#MP_LIB = $${MP_PRJ_BLD}/lib
#MP_LIB = $${CIFRA_LIB}

# mp LIBS
#
mp_LIBS += \
-L$${MP_LIB}/lib$${MP_NAME} \
-L$${MP_LIB}/lib$${MP_NAME}n \
-L$${MP_LIB}/lib$${MP_NAME}z \
-L$${MP_LIB} \
-l$${MP_NAME} \
-l$${MP_NAME}n \
-l$${MP_NAME}z \

########################################################################
# mbuint
MBUINT_THIRDPARTY_PKG_MAKE_BLD = $${MBUINT_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
MBUINT_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${MBUINT_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
MBUINT_THIRDPARTY_PKG_BLD = $${MBUINT_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MBUINT_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${MBUINT_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MBUINT_PKG_BLD = $${OTHER_BLD}/$${MBUINT_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MBUINT_PRJ_BLD = $${OTHER_BLD}/$${MBUINT_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#MBUINT_LIB = $${MBUINT_THIRDPARTY_PKG_MAKE_BLD}/lib
MBUINT_LIB = $${MBUINT_THIRDPARTY_PRJ_MAKE_BLD}/lib
#MBUINT_LIB = $${MBUINT_THIRDPARTY_PKG_BLD}/lib
#MBUINT_LIB = $${MBUINT_THIRDPARTY_PRJ_BLD}/lib
#MBUINT_LIB = $${MBUINT_PKG_BLD}/lib
#MBUINT_LIB = $${MBUINT_PRJ_BLD}/lib
#MBUINT_LIB = $${CIFRA_LIB}

# mbuint LIBS
#
mbuint_LIBS += \
-L$${MBUINT_LIB}/lib$${MBUINT_NAME} \
-L$${MBUINT_LIB} \
-l$${MBUINT_NAME} \

########################################################################
# rostra
ROSTRA_THIRDPARTY_PKG_MAKE_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_MAKE_BLD = $${ROSTRA_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PKG_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_BLD = $${ROSTRA_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PKG_BLD = $${OTHER_BLD}/$${ROSTRA_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_PKG_BLD}/lib
ROSTRA_LIB = $${ROSTRA_PRJ_BLD}/lib
#ROSTRA_LIB = $${CIFRA_LIB}

# rostra LIBS
#
rostra_LIBS += \
-L$${ROSTRA_LIB}/lib$${ROSTRA_NAME} \
-l$${ROSTRA_NAME} \

########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${NADIR_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${NADIR_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
NADIR_LIB = $${NADIR_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${CIFRA_LIB}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_NAME} \
-l$${NADIR_NAME} \

# xosnadir LIBS
#
xosnadir_LIBS += \
-L$${NADIR_LIB}/libxos$${NADIR_NAME} \
-lxos$${NADIR_NAME} \

########################################################################
# numera
NUMERA_THIRDPARTY_PKG_MAKE_BLD = $${NUMERA_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
NUMERA_THIRDPARTY_PRJ_MAKE_BLD = $${NUMERA_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
NUMERA_THIRDPARTY_PKG_BLD = $${NUMERA_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NUMERA_THIRDPARTY_PRJ_BLD = $${NUMERA_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NUMERA_PKG_BLD = $${OTHER_BLD}/$${NUMERA_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NUMERA_PRJ_BLD = $${OTHER_BLD}/$${NUMERA_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#NUMERA_LIB = $${NUMERA_THIRDPARTY_PKG_MAKE_BLD}/lib
#NUMERA_LIB = $${NUMERA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NUMERA_LIB = $${NUMERA_THIRDPARTY_PKG_BLD}/lib
#NUMERA_LIB = $${NUMERA_THIRDPARTY_PRJ_BLD}/lib
#NUMERA_LIB = $${NUMERA_PKG_BLD}/lib
NUMERA_LIB = $${NUMERA_PRJ_BLD}/lib
#NUMERA_LIB = $${CIFRA_LIB}

# numera LIBS
#
numera_LIBS += \
-L$${NUMERA_LIB}/lib$${NUMERA_NAME} \
-l$${NUMERA_NAME} \

########################################################################
# cifra

# cifra INCLUDEPATH
#
cifra_INCLUDEPATH += \

# cifra DEFINES
#
cifra_DEFINES += \

# cifra LIBS
#
cifra_LIBS += \
$${xosnadir_LIBS} \
$${build_cifra_LIBS} \

contains(CIFRA_OS,macosx|linux) {
cifra_LIBS += \
-lpthread \
-ldl
} else {
} # contains(CIFRA_OS,macosx|linux)

contains(CIFRA_OS,linux) {
cifra_LIBS += \
-lrt
} else {
} # contains(CIFRA_OS,linux)
