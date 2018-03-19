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
# QtCreator .pri file for cifra
########################################################################

OTHER_PKG = ../../../../../../..
OTHER_PRJ = ../../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/src/$${THIRDPARTY_NAME}

########################################################################
# bn
BN_VERSION_MAJOR = 0
BN_VERSION_MINOR = 0
BN_VERSION_RELEASE = 0
BN_VERSION = $${BN_VERSION_MAJOR}.$${BN_VERSION_MINOR}.$${BN_VERSION_RELEASE}
BN_NAME = bn
BN_GROUP = openssl
BN_DIR = $${BN_GROUP}/$${BN_NAME}-$${BN_VERSION}
BN_PKG_DIR = $${BN_NAME}
BN_HOME_BUILD = $${HOME}/build/$${BN_NAME}
BN_HOME_BUILD_INCLUDE = $${BN_HOME_BUILD}/include
BN_HOME_BUILD_LIB = $${BN_HOME_BUILD}/lib
BN_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${BN_DIR}
BN_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${BN_DIR}
BN_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${BN_PKG_DIR}
BN_THIRDPARTY_SRC_GROUP = $${BN_NAME}
BN_THIRDPARTY_SRC_NAME = $${BN_NAME}
BN_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${BN_THIRDPARTY_SRC_GROUP}/$${BN_THIRDPARTY_SRC_NAME} 
BN_PKG = $${OTHER_PKG}/$${BN_PKG_DIR}
BN_PRJ = $${OTHER_PRJ}/$${BN_PKG_DIR}
#BN_SRC = $${BN_THIRDPARTY_SRC_DIR}
#BN_SRC = $${BN_THIRDPARTY_PKG}/src
BN_SRC = $${BN_THIRDPARTY_PRJ}/src
#BN_SRC = $${BN_PKG}/src
#BN_SRC = $${BN_PRJ}/src

# bn INCLUDEPATH
#
#bn_INCLUDEPATH += \
#$${BN_HOME_BUILD_INCLUDE} \

bn_INCLUDEPATH += \
$${BN_SRC}/$${BN_GROUP}/$${BN_NAME} \
$${BN_SRC}/$${BN_GROUP} \
$${BN_SRC} \

# bn DEFINES
#
bn_DEFINES += \

########################################################################
# mp
MP_VERSION_MAJOR = 0
MP_VERSION_MINOR = 0
MP_VERSION_RELEASE = 0
MP_VERSION = $${MP_VERSION_MAJOR}.$${MP_VERSION_MINOR}.$${MP_VERSION_RELEASE}
MP_NAME = mp
MP_GROUP = gmp
MP_DIR = $${MP_GROUP}/$${MP_NAME}-$${MP_VERSION}
MP_PKG_DIR = $${MP_NAME}
MP_HOME_BUILD = $${HOME}/build/$${MP_NAME}
MP_HOME_BUILD_INCLUDE = $${MP_HOME_BUILD}/include
MP_HOME_BUILD_LIB = $${MP_HOME_BUILD}/lib
MP_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${MP_DIR}
MP_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${MP_DIR}
MP_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${MP_PKG_DIR}
MP_THIRDPARTY_SRC_GROUP = $${MP_NAME}
MP_THIRDPARTY_SRC_NAME = $${MP_NAME}
MP_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${MP_THIRDPARTY_SRC_GROUP}/$${MP_THIRDPARTY_SRC_NAME} 
MP_PKG = $${OTHER_PKG}/$${MP_PKG_DIR}
MP_PRJ = $${OTHER_PRJ}/$${MP_PKG_DIR}
#MP_SRC = $${MP_THIRDPARTY_SRC_DIR}
#MP_SRC = $${MP_THIRDPARTY_PKG}/src
MP_SRC = $${MP_THIRDPARTY_PRJ}/src
#MP_SRC = $${MP_PKG}/src
#MP_SRC = $${MP_PRJ}/src

# mp INCLUDEPATH
#
#mp_INCLUDEPATH += \
#$${MP_HOME_BUILD_INCLUDE} \

mp_INCLUDEPATH += \
$${MP_SRC}/$${MP_GROUP}/$${MP_NAME}/$${MP_NAME}n \
$${MP_SRC}/$${MP_GROUP}/$${MP_NAME}/$${MP_NAME}z \
$${MP_SRC}/$${MP_GROUP}/$${MP_NAME} \
$${MP_SRC}/$${MP_GROUP} \
$${MP_SRC} \

# mp DEFINES
#
mp_DEFINES += \
_NO_INLINES \
NO_ASM \

########################################################################
# mb
MB_VERSION_MAJOR = 0
MB_VERSION_MINOR = 0
MB_VERSION_RELEASE = 0
MB_VERSION = $${MB_VERSION_MAJOR}.$${MB_VERSION_MINOR}.$${MB_VERSION_RELEASE}
MB_LIB_NAME = mbuint
MB_NAME = generic
MB_GROUP = etiris
MB_DIR = $${MB_GROUP}/$${MB_NAME}-$${MB_VERSION}
MB_PKG_DIR = $${MB_NAME}/cpp/xos
MB_HOME_BUILD = $${HOME}/build/$${MB_NAME}
MB_HOME_BUILD_INCLUDE = $${MB_HOME_BUILD}/include
MB_HOME_BUILD_LIB = $${MB_HOME_BUILD}/lib
MB_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${MB_DIR}
MB_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${MB_DIR}
MB_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${MB_PKG_DIR}
MB_THIRDPARTY_SRC_GROUP = $${MB_NAME}
MB_THIRDPARTY_SRC_NAME = $${MB_NAME}
MB_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${MB_THIRDPARTY_SRC_GROUP}/$${MB_THIRDPARTY_SRC_NAME} 
MB_PKG = $${OTHER_PKG}/$${MB_PKG_DIR}
MB_PRJ = $${OTHER_PRJ}/$${MB_PKG_DIR}
#MB_SRC = $${MB_THIRDPARTY_SRC_DIR}
#MB_SRC = $${MB_THIRDPARTY_PKG}/src
MB_SRC = $${MB_THIRDPARTY_PRJ}/src
#MB_SRC = $${MB_PKG}/src
#MB_SRC = $${MB_PRJ}/src

# mb INCLUDEPATH
#
#mb_INCLUDEPATH += \
#$${MB_HOME_BUILD_INCLUDE} \

mb_INCLUDEPATH += \
$${MB_SRC}/etiris/generic \

# mb DEFINES
#
mb_DEFINES += \

########################################################################
# rostra
ROSTRA_VERSION_MAJOR = 0
ROSTRA_VERSION_MINOR = 0
ROSTRA_VERSION_RELEASE = 0
ROSTRA_VERSION = $${ROSTRA_VERSION_MAJOR}.$${ROSTRA_VERSION_MINOR}.$${ROSTRA_VERSION_RELEASE}
ROSTRA_NAME = rostra
ROSTRA_GROUP = $${ROSTRA_NAME}
ROSTRA_DIR = $${ROSTRA_GROUP}/$${ROSTRA_NAME}-$${ROSTRA_VERSION}
ROSTRA_PKG_DIR = $${ROSTRA_NAME}
ROSTRA_HOME_BUILD = $${HOME}/build/$${ROSTRA_NAME}
ROSTRA_HOME_BUILD_INCLUDE = $${ROSTRA_HOME_BUILD}/include
ROSTRA_HOME_BUILD_LIB = $${ROSTRA_HOME_BUILD}/lib
ROSTRA_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${ROSTRA_DIR}
ROSTRA_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${ROSTRA_DIR}
ROSTRA_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${ROSTRA_PKG_DIR}
ROSTRA_THIRDPARTY_SRC_GROUP = $${ROSTRA_NAME}
ROSTRA_THIRDPARTY_SRC_NAME = $${ROSTRA_NAME}
ROSTRA_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${ROSTRA_THIRDPARTY_SRC_GROUP}/$${ROSTRA_THIRDPARTY_SRC_NAME} 
ROSTRA_PKG = $${OTHER_PKG}/$${ROSTRA_PKG_DIR}
ROSTRA_PRJ = $${OTHER_PRJ}/$${ROSTRA_PKG_DIR}
#ROSTRA_SRC = $${ROSTRA_THIRDPARTY_SRC_DIR}
#ROSTRA_SRC = $${ROSTRA_THIRDPARTY_PKG}/src
#ROSTRA_SRC = $${ROSTRA_THIRDPARTY_PRJ}/src
#ROSTRA_SRC = $${ROSTRA_PKG}/src
ROSTRA_SRC = $${ROSTRA_PRJ}/src

# rostra INCLUDEPATH
#
#rostra_INCLUDEPATH += \
#$${ROSTRA_HOME_BUILD_INCLUDE} \

rostra_INCLUDEPATH += \
$${ROSTRA_SRC} \

# rostra DEFINES
#
rostra_DEFINES += \

########################################################################
# nadir
NADIR_VERSION_MAJOR = 0
NADIR_VERSION_MINOR = 0
NADIR_VERSION_RELEASE = 0
NADIR_VERSION = $${NADIR_VERSION_MAJOR}.$${NADIR_VERSION_MINOR}.$${NADIR_VERSION_RELEASE}
NADIR_NAME = nadir
NADIR_GROUP = $${NADIR_NAME}
NADIR_DIR = $${NADIR_GROUP}/$${NADIR_NAME}-$${NADIR_VERSION}
NADIR_PKG_DIR = $${NADIR_NAME}
NADIR_HOME_BUILD = $${HOME}/build/$${NADIR_NAME}
NADIR_HOME_BUILD_INCLUDE = $${NADIR_HOME_BUILD}/include
NADIR_HOME_BUILD_LIB = $${NADIR_HOME_BUILD}/lib
NADIR_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${NADIR_DIR}
NADIR_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${NADIR_DIR}
NADIR_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${NADIR_PKG_DIR}
NADIR_THIRDPARTY_SRC_GROUP = $${NADIR_NAME}
NADIR_THIRDPARTY_SRC_NAME = $${NADIR_NAME}
NADIR_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${NADIR_THIRDPARTY_SRC_GROUP}/$${NADIR_THIRDPARTY_SRC_NAME} 
NADIR_PKG = $${OTHER_PKG}/$${NADIR_PKG_DIR}
NADIR_PRJ = $${OTHER_PRJ}/$${NADIR_PKG_DIR}
#NADIR_SRC = $${NADIR_THIRDPARTY_SRC_DIR}
#NADIR_SRC = $${NADIR_THIRDPARTY_PKG}/src
#NADIR_SRC = $${NADIR_THIRDPARTY_PRJ}/src
#NADIR_SRC = $${NADIR_PKG}/src
NADIR_SRC = $${NADIR_PRJ}/src

# nadir INCLUDEPATH
#
#nadir_INCLUDEPATH += \
#$${NADIR_HOME_BUILD_INCLUDE} \

nadir_INCLUDEPATH += \
$${NADIR_SRC} \

# nadir DEFINES
#
nadir_DEFINES += \
NO_USE_XOS_LOGGER_INTERFACE \

########################################################################
# numera
NUMERA_VERSION_MAJOR = 0
NUMERA_VERSION_MINOR = 0
NUMERA_VERSION_RELEASE = 0
NUMERA_VERSION = $${NUMERA_VERSION_MAJOR}.$${NUMERA_VERSION_MINOR}.$${NUMERA_VERSION_RELEASE}
NUMERA_NAME = numera
NUMERA_GROUP = $${NUMERA_NAME}
NUMERA_DIR = $${NUMERA_GROUP}/$${NUMERA_NAME}-$${NUMERA_VERSION}
NUMERA_PKG_DIR = $${NUMERA_NAME}
NUMERA_HOME_BUILD = $${HOME}/build/$${NUMERA_NAME}
NUMERA_HOME_BUILD_INCLUDE = $${NUMERA_HOME_BUILD}/include
NUMERA_HOME_BUILD_LIB = $${NUMERA_HOME_BUILD}/lib
NUMERA_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${NUMERA_DIR}
NUMERA_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${NUMERA_DIR}
NUMERA_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${NUMERA_PKG_DIR}
NUMERA_THIRDPARTY_SRC_GROUP = $${NUMERA_NAME}
NUMERA_THIRDPARTY_SRC_NAME = $${NUMERA_NAME}
NUMERA_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${NUMERA_THIRDPARTY_SRC_GROUP}/$${NUMERA_THIRDPARTY_SRC_NAME} 
NUMERA_PKG = $${OTHER_PKG}/$${NUMERA_PKG_DIR}
NUMERA_PRJ = $${OTHER_PRJ}/$${NUMERA_PKG_DIR}
#NUMERA_SRC = $${NUMERA_THIRDPARTY_SRC_DIR}
#NUMERA_SRC = $${NUMERA_THIRDPARTY_PKG}/src
#NUMERA_SRC = $${NUMERA_THIRDPARTY_PRJ}/src
#NUMERA_SRC = $${NUMERA_PKG}/src
NUMERA_SRC = $${NUMERA_PRJ}/src

# numera INCLUDEPATH
#
#numera_INCLUDEPATH += \
#$${NUMERA_HOME_BUILD_INCLUDE} \

numera_INCLUDEPATH += \
$${NUMERA_SRC} \

# numera DEFINES
#
numera_DEFINES += \

########################################################################
# cifra
FRAMEWORK_NAME = cifra

CIFRA_PKG = ../../../../..
CIFRA_BLD = ../..

CIFRA_PRJ = $${CIFRA_PKG}
CIFRA_BIN = $${CIFRA_BLD}/bin
CIFRA_LIB = $${CIFRA_BLD}/lib
CIFRA_SRC = $${CIFRA_PKG}/src

# cifra BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
cifra_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
cifra_DEFINES += RELEASE_BUILD
}

# cifra INCLUDEPATH
#
cifra_INCLUDEPATH += \
$${CIFRA_SRC} \
$${numera_INCLUDEPATH} \
$${nadir_INCLUDEPATH} \
$${rostra_INCLUDEPATH} \
$${mb_INCLUDEPATH} \
$${mp_INCLUDEPATH} \
$${bn_INCLUDEPATH} \
$${build_cifra_INCLUDEPATH} \

# cifra DEFINES
#
cifra_DEFINES += \
$${bn_DEFINES} \
$${mp_DEFINES} \
$${mb_DEFINES} \
$${rostra_DEFINES} \
$${nadir_DEFINES} \
$${numera_DEFINES} \
$${build_cifra_DEFINES} \

# cifra LIBS
#
cifra_LIBS += \
-L$${CIFRA_LIB}/lib$${FRAMEWORK_NAME} \
-l$${FRAMEWORK_NAME} \
