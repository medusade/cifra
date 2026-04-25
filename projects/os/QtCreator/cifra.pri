########################################################################
# Copyright (c) 1988-2024 $organization$
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
#   Date: 2/26/2024
#
# os specific QtCreator project file for medusade framework cifra
########################################################################
# Depends: bn;mp;mbuint;rostra;nadir;numera

UNAME = $$system(uname)

contains(UNAME,Darwin) {
DARWIN_VERSION = $$system(sw_vers -productVersion)
} else {
contains(UNAME,Linux) {
LINUX_VERSION = $$system(uname -r)
} else {
contains(UNAME,Windows) {
WINDOWS_VERSION = $$system(ver)
} else {
} # contains(UNAME,Windows)
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(UNAME,Darwin) {
DARWIN_VERSION_NUMBER = $$system(echo $${DARWIN_VERSION} | cut -d'.' -f1)
contains(DARWIN_VERSION_NUMBER,15) {
DARWIN_VERSION_NAME = Sequoia
} else {
contains(DARWIN_VERSION_NUMBER,14) {
DARWIN_VERSION_NAME = Sonoma
} else {
contains(DARWIN_VERSION_NUMBER,13) {
DARWIN_VERSION_NAME = Ventura
} else {
contains(DARWIN_VERSION_NUMBER,12) {
DARWIN_VERSION_NAME = Monterey
} else {
contains(DARWIN_VERSION_NUMBER,11) {
DARWIN_VERSION_NAME = Bigsur
} else {
contains(DARWIN_VERSION_NUMBER,10) {
DARWIN_VERSION_NAME = Sierra
} else {
DARWIN_VERSION_NAME = Mavricks
} # contains(DARWIN_VERSION,10)
} # contains(DARWIN_VERSION,11)
} # contains(DARWIN_VERSION,12)
} # contains(DARWIN_VERSION,13)
} # contains(DARWIN_VERSION,14)
} # contains(DARWIN_VERSION,15)
} # contains(UNAME,Darwin)

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
contains(DARWIN_VERSION_NUMBER,15) {
#QMAKE_CXXFLAGS += -Werror -Wno-error=register
QMAKE_CXXFLAGS += -Wno-register
} else {
} # contains(DARWIN_VERSION_NUMBER,15)
contains(DARWIN_VERSION_NUMBER,14) {
QMAKE_CXXFLAGS += -Wno-dynamic-exception-spec
} else {
} # contains(DARWIN_VERSION_NUMBER,14)
contains(DARWIN_VERSION_NUMBER,11|12|13|14|15) {
QMAKE_CFLAGS += -Wno-implicit-function-declaration
} else {
} # contains(DARWIN_VERSION_NUMBER,11|12|13|14|15)
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
# rostra
ROSTRA_THIRDPARTY_PKG_MAKE_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${ROSTRA_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PKG_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PKG_BLD = $${OTHER_BLD}/$${ROSTRA_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_BLD}/lib
ROSTRA_LIB = $${ROSTRA_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_PRJ_BLD}/lib
#ROSTRA_LIB = $${CIFRA_LIB}
ROSTRA_LIB_NAME = $${ROSTRA_NAME}

# rostra LIBS
#
rostra_LIBS += \
-L$${ROSTRA_LIB}/lib$${ROSTRA_LIB_NAME} \
-l$${ROSTRA_LIB_NAME} \


########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
NADIR_LIB = $${NADIR_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${CIFRA_LIB}
NADIR_LIB_NAME = xos$${NADIR_NAME}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_LIB_NAME} \
-l$${NADIR_LIB_NAME} \


########################################################################
# numera
NUMERA_THIRDPARTY_PKG_MAKE_BLD = $${NUMERA_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
NUMERA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${NUMERA_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
NUMERA_THIRDPARTY_PKG_BLD = $${NUMERA_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NUMERA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${NUMERA_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NUMERA_PKG_BLD = $${OTHER_BLD}/$${NUMERA_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NUMERA_PRJ_BLD = $${OTHER_BLD}/$${NUMERA_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#NUMERA_LIB = $${NUMERA_THIRDPARTY_PKG_MAKE_BLD}/lib
#NUMERA_LIB = $${NUMERA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NUMERA_LIB = $${NUMERA_THIRDPARTY_PKG_BLD}/lib
#NUMERA_LIB = $${NUMERA_THIRDPARTY_PRJ_BLD}/lib
NUMERA_LIB = $${NUMERA_PKG_BLD}/lib
#NUMERA_LIB = $${NUMERA_PRJ_BLD}/lib
#NUMERA_LIB = $${CIFRA_LIB}
NUMERA_LIB_NAME = $${NUMERA_NAME}

# numera LIBS
#
numera_LIBS += \
-L$${NUMERA_LIB}/lib$${NUMERA_LIB_NAME} \
-l$${NUMERA_LIB_NAME} \

########################################################################
# bn
BN_THIRDPARTY_PKG_MAKE_BLD = $${BN_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
BN_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${BN_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
BN_THIRDPARTY_PKG_BLD = $${BN_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${BN_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_PKG_BLD = $${OTHER_BLD}/$${BN_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_PRJ_BLD = $${OTHER_BLD}/$${BN_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#BN_LIB = $${BN_THIRDPARTY_PKG_MAKE_BLD}/lib
#BN_LIB = $${BN_THIRDPARTY_PRJ_MAKE_BLD}/lib
#BN_LIB = $${BN_THIRDPARTY_PKG_BLD}/lib
#BN_LIB = $${BN_THIRDPARTY_PRJ_BLD}/lib
#BN_LIB = $${BN_PKG_BLD}/lib
#BN_LIB = $${BN_PRJ_BLD}/lib
#BN_LIB = $${CIFRA_LIB}
BN_LIB_NAME = $${BN_NAME}
BN_LIB = $${NUMERA_LIB}

# bn LIBS
#
bn_LIBS += \
-L$${BN_LIB}/lib$${BN_LIB_NAME} \
-l$${BN_LIB_NAME} \


########################################################################
# mp
MP_THIRDPARTY_PKG_MAKE_BLD = $${MP_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
MP_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${MP_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
MP_THIRDPARTY_PKG_BLD = $${MP_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${MP_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_PKG_BLD = $${OTHER_BLD}/$${MP_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_PRJ_BLD = $${OTHER_BLD}/$${MP_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#MP_LIB = $${MP_THIRDPARTY_PKG_MAKE_BLD}/lib
#MP_LIB = $${MP_THIRDPARTY_PRJ_MAKE_BLD}/lib
#MP_LIB = $${MP_THIRDPARTY_PKG_BLD}/lib
#MP_LIB = $${MP_THIRDPARTY_PRJ_BLD}/lib
#MP_LIB = $${MP_PKG_BLD}/lib
#MP_LIB = $${MP_PRJ_BLD}/lib
#MP_LIB = $${CIFRA_LIB}
MP_LIB_NAME = $${MP_NAME}
MP_LIB = $${NUMERA_LIB}

# mp LIBS
#
mp_LIBS += \
-L$${MP_LIB}/lib$${MP_LIB_NAME}z \
-l$${MP_LIB_NAME}z \
-L$${MP_LIB}/lib$${MP_LIB_NAME}n \
-l$${MP_LIB_NAME}n \
-L$${MP_LIB}/lib$${MP_LIB_NAME} \
-l$${MP_LIB_NAME} \


########################################################################
# mbuint
MBUINT_THIRDPARTY_PKG_MAKE_BLD = $${MBUINT_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
MBUINT_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${MBUINT_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/$${BUILD_CONFIG}
MBUINT_THIRDPARTY_PKG_BLD = $${MBUINT_THIRDPARTY_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MBUINT_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${MBUINT_THIRDPARTY_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MBUINT_PKG_BLD = $${OTHER_BLD}/$${MBUINT_PKG}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
MBUINT_PRJ_BLD = $${OTHER_BLD}/$${MBUINT_PRJ}/build/$${CIFRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#MBUINT_LIB = $${MBUINT_THIRDPARTY_PKG_MAKE_BLD}/lib
#MBUINT_LIB = $${MBUINT_THIRDPARTY_PRJ_MAKE_BLD}/lib
#MBUINT_LIB = $${MBUINT_THIRDPARTY_PKG_BLD}/lib
#MBUINT_LIB = $${MBUINT_THIRDPARTY_PRJ_BLD}/lib
#MBUINT_LIB = $${MBUINT_PKG_BLD}/lib
#MBUINT_LIB = $${MBUINT_PRJ_BLD}/lib
#MBUINT_LIB = $${CIFRA_LIB}
MBUINT_LIB_NAME = $${MBUINT_NAME}
MBUINT_LIB = $${NUMERA_LIB}

# mbuint LIBS
#
mbuint_LIBS += \
-L$${MBUINT_LIB}/lib$${MBUINT_LIB_NAME} \
-l$${MBUINT_LIB_NAME} \


########################################################################
# cifra

# cifra INCLUDEPATH
#
cifra_INCLUDEPATH += \

# cifra DEFINES
#
cifra_DEFINES += \

# cifra os LIBS
#
contains(CIFRA_OS,macosx|linux) {
cifra_os_LIBS += \
-lpthread \
-ldl
} else {
} # contains(CIFRA_OS,macosx|linux)

contains(CIFRA_OS,linux) {
cifra_os_LIBS += \
-lrt
} else {
} # contains(CIFRA_OS,linux)


# cifra base LIBS
#
cifra_base_LIBS += \
$${numera_LIBS} \
$${nadir_LIBS} \
$${rostra_LIBS} \
$${mbuint_LIBS} \
$${mp_LIBS} \
$${bn_LIBS} \


# cifra LIBS
#
cifra_LIBS += \
$${cifra_base_LIBS} \
$${build_cifra_LIBS} \
$${cifra_os_LIBS} \

########################################################################
