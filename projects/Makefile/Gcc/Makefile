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
#   File: Makefile
#
# Author: $author$
#   Date: 3/16/2019
#
# generic Gcc Makefile for cifra
########################################################################

OTHER_VERSION_PKG = ${PKG}
OTHER_DEPENDS_PKG = ${PKG}/..
OTHER_THIRDPARTY_NAME = thirdparty
OTHER_THIRDPARTY_VERSION_PKG = ${OTHER_VERSION_PKG}/${OTHER_THIRDPARTY_NAME}

CIFRA_PKG = ${PKG}
CIFRA_SRC = ${CIFRA_PKG}/src
CIFRA_BLD = ${CIFRA_PKG}/${BLD}/${BUILD_TYPE}
CIFRA_LIB = ${CIFRA_BLD}/lib
CIFRA_BIN = ${CIFRA_BLD}/bin

########################################################################
# bn
BN_VERSION_MAJOR = 0
BN_VERSION_MINOR = 0
BN_VERSION_RELEASE = 0
BN_VERSION = ${BN_VERSION_MAJOR}.${BN_VERSION_MINOR}.${BN_VERSION_RELEASE}
BN_NAME = bn
BN_GROUP = ${BN_NAME}
BN_VERSION_DIR = ${BN_GROUP}/${BN_NAME}-${BN_VERSION}
BN_DEPENDS_DIR = ${BN_NAME}

#BN_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${BN_VERSION_DIR}
#BN_PKG = ${OTHER_VERSION_PKG}/${BN_VERSION_DIR}
BN_PKG = ${OTHER_DEPENDS_PKG}/${BN_DEPENDS_DIR}
#BN_SRC = ${BN_PKG}/src/${BN_GROUP}/${BN_NAME}
BN_SRC = ${BN_PKG}/src
BN_BLD = ${BN_PKG}/${BLD}/${BUILD_TYPE}
BN_LIB = ${BN_BLD}/lib
BN_BIN = ${BN_BLD}/bin

# bn USRDEFINES
#
bn_USRDEFINES += \

# bn USRINCLUDES
#
bn_USRINCLUDES += \
-I${BN_SRC} \

# bn USRCXXFLAGS
#
bn_USRCXXFLAGS += \

# bn USRLIBDIRS
#
bn_USRLIBDIRS += \
-L${BN_LIB} \

# bn LIBS
#
bn_LIBS += \
-lbn \

# bn FRAMEWORKS
#
bn_FRAMEWORKS += \

########################################################################
# mp
MP_VERSION_MAJOR = 0
MP_VERSION_MINOR = 0
MP_VERSION_RELEASE = 0
MP_VERSION = ${MP_VERSION_MAJOR}.${MP_VERSION_MINOR}.${MP_VERSION_RELEASE}
MP_NAME = mp
MP_GROUP = ${MP_NAME}
MP_VERSION_DIR = ${MP_GROUP}/${MP_NAME}-${MP_VERSION}
MP_DEPENDS_DIR = ${MP_NAME}

#MP_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${MP_VERSION_DIR}
#MP_PKG = ${OTHER_VERSION_PKG}/${MP_VERSION_DIR}
MP_PKG = ${OTHER_DEPENDS_PKG}/${MP_DEPENDS_DIR}
#MP_SRC = ${MP_PKG}/src/${BN_GROUP}/${BN_NAME}
MP_SRC = ${MP_PKG}/src
MP_BLD = ${MP_PKG}/${BLD}/${BUILD_TYPE}
MP_LIB = ${MP_BLD}/lib
MP_BIN = ${MP_BLD}/bin

# mp USRDEFINES
#
mp_USRDEFINES += \

# mp USRINCLUDES
#
mp_USRINCLUDES += \
-I${MP_SRC} \

# mp USRCXXFLAGS
#
mp_USRCXXFLAGS += \

# mp USRLIBDIRS
#
mp_USRLIBDIRS += \
-L${MP_LIB} \

# mp LIBS
#
mp_LIBS += \
-lmp \

# mp FRAMEWORKS
#
mp_FRAMEWORKS += \

########################################################################
# mb
MB_VERSION_MAJOR = 0
MB_VERSION_MINOR = 0
MB_VERSION_RELEASE = 0
MB_VERSION = ${MB_VERSION_MAJOR}.${MB_VERSION_MINOR}.${MB_VERSION_RELEASE}
MB_NAME = mb
MB_GROUP = ${MB_NAME}
MB_VERSION_DIR = ${MB_GROUP}/${MB_NAME}-${MB_VERSION}
MB_DEPENDS_DIR = ${MB_NAME}

#MB_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${MB_VERSION_DIR}
#MB_PKG = ${OTHER_VERSION_PKG}/${MB_VERSION_DIR}
MB_PKG = ${OTHER_DEPENDS_PKG}/${MB_DEPENDS_DIR}
#MB_SRC = ${MB_PKG}/src/${BN_GROUP}/${BN_NAME}
MB_SRC = ${MB_PKG}/src
MB_BLD = ${MB_PKG}/${BLD}/${BUILD_TYPE}
MB_LIB = ${MB_BLD}/lib
MB_BIN = ${MB_BLD}/bin

# mb USRDEFINES
#
mb_USRDEFINES += \

# mb USRINCLUDES
#
mb_USRINCLUDES += \
-I${MB_SRC} \

# mb USRCXXFLAGS
#
mb_USRCXXFLAGS += \

# mb USRLIBDIRS
#
mb_USRLIBDIRS += \
-L${MB_LIB} \

# mb LIBS
#
mb_LIBS += \
-lmb \

# mb FRAMEWORKS
#
mb_FRAMEWORKS += \

########################################################################
# mbuint
MBUINT_VERSION_MAJOR = 0
MBUINT_VERSION_MINOR = 0
MBUINT_VERSION_RELEASE = 0
MBUINT_VERSION = ${MBUINT_VERSION_MAJOR}.${MBUINT_VERSION_MINOR}.${MBUINT_VERSION_RELEASE}
MBUINT_NAME = mbuint
MBUINT_GROUP = ${MBUINT_NAME}
MBUINT_VERSION_DIR = ${MBUINT_GROUP}/${MBUINT_NAME}-${MBUINT_VERSION}
MBUINT_DEPENDS_DIR = ${MBUINT_NAME}

#MBUINT_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${MBUINT_VERSION_DIR}
#MBUINT_PKG = ${OTHER_VERSION_PKG}/${MBUINT_VERSION_DIR}
MBUINT_PKG = ${OTHER_DEPENDS_PKG}/${MBUINT_DEPENDS_DIR}
#MBUINT_SRC = ${MBUINT_PKG}/src/${BN_GROUP}/${BN_NAME}
MBUINT_SRC = ${MBUINT_PKG}/src
MBUINT_BLD = ${MBUINT_PKG}/${BLD}/${BUILD_TYPE}
MBUINT_LIB = ${MBUINT_BLD}/lib
MBUINT_BIN = ${MBUINT_BLD}/bin

# mbuint USRDEFINES
#
mbuint_USRDEFINES += \

# mbuint USRINCLUDES
#
mbuint_USRINCLUDES += \
-I${MBUINT_SRC} \

# mbuint USRCXXFLAGS
#
mbuint_USRCXXFLAGS += \

# mbuint USRLIBDIRS
#
mbuint_USRLIBDIRS += \
-L${MBUINT_LIB} \

# mbuint LIBS
#
mbuint_LIBS += \
-lmbuint \

# mbuint FRAMEWORKS
#
mbuint_FRAMEWORKS += \

########################################################################
# rostra
ROSTRA_VERSION_MAJOR = 0
ROSTRA_VERSION_MINOR = 0
ROSTRA_VERSION_RELEASE = 0
ROSTRA_VERSION = ${ROSTRA_VERSION_MAJOR}.${ROSTRA_VERSION_MINOR}.${ROSTRA_VERSION_RELEASE}
ROSTRA_NAME = rostra
ROSTRA_GROUP = ${ROSTRA_NAME}
ROSTRA_VERSION_DIR = ${ROSTRA_GROUP}/${ROSTRA_NAME}-${ROSTRA_VERSION}
ROSTRA_DEPENDS_DIR = ${ROSTRA_NAME}

#ROSTRA_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${ROSTRA_VERSION_DIR}
#ROSTRA_PKG = ${OTHER_VERSION_PKG}/${ROSTRA_VERSION_DIR}
ROSTRA_PKG = ${OTHER_DEPENDS_PKG}/${ROSTRA_DEPENDS_DIR}
#ROSTRA_SRC = ${ROSTRA_PKG}/src/${BN_GROUP}/${BN_NAME}
ROSTRA_SRC = ${ROSTRA_PKG}/src
ROSTRA_BLD = ${ROSTRA_PKG}/${BLD}/${BUILD_TYPE}
ROSTRA_LIB = ${ROSTRA_BLD}/lib
ROSTRA_BIN = ${ROSTRA_BLD}/bin

# rostra USRDEFINES
#
rostra_USRDEFINES += \

# rostra USRINCLUDES
#
rostra_USRINCLUDES += \
-I${ROSTRA_SRC} \

# rostra USRCXXFLAGS
#
rostra_USRCXXFLAGS += \

# rostra USRLIBDIRS
#
rostra_USRLIBDIRS += \
-L${ROSTRA_LIB} \

# rostra LIBS
#
rostra_LIBS += \
-lrostra \

# rostra FRAMEWORKS
#
rostra_FRAMEWORKS += \

########################################################################
# nadir
NADIR_VERSION_MAJOR = 0
NADIR_VERSION_MINOR = 0
NADIR_VERSION_RELEASE = 0
NADIR_VERSION = ${NADIR_VERSION_MAJOR}.${NADIR_VERSION_MINOR}.${NADIR_VERSION_RELEASE}
NADIR_NAME = nadir
NADIR_GROUP = ${NADIR_NAME}
NADIR_VERSION_DIR = ${NADIR_GROUP}/${NADIR_NAME}-${NADIR_VERSION}
NADIR_DEPENDS_DIR = ${NADIR_NAME}

#NADIR_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${NADIR_VERSION_DIR}
#NADIR_PKG = ${OTHER_VERSION_PKG}/${NADIR_VERSION_DIR}
NADIR_PKG = ${OTHER_DEPENDS_PKG}/${NADIR_DEPENDS_DIR}
#NADIR_SRC = ${NADIR_PKG}/src/${BN_GROUP}/${BN_NAME}
NADIR_SRC = ${NADIR_PKG}/src
NADIR_BLD = ${NADIR_PKG}/${BLD}/${BUILD_TYPE}
NADIR_LIB = ${NADIR_BLD}/lib
NADIR_BIN = ${NADIR_BLD}/bin

# nadir USRDEFINES
#
nadir_USRDEFINES += \

# nadir USRINCLUDES
#
nadir_USRINCLUDES += \
-I${NADIR_SRC} \

# nadir USRCXXFLAGS
#
nadir_USRCXXFLAGS += \

# nadir USRLIBDIRS
#
nadir_USRLIBDIRS += \
-L${NADIR_LIB} \

# nadir LIBS
#
nadir_LIBS += \
-lnadir \

# nadir FRAMEWORKS
#
nadir_FRAMEWORKS += \

########################################################################
# xosnadir
#

# xosnadir USRDEFINES
#
xosnadir_USRDEFINES += \
-DNO_USE_NADIR_BASE \
-DNO_USE_XOS_LOGGER_INTERFACE \

# xosnadir USRINCLUDES
#
xosnadir_USRINCLUDES += \
-I${NADIR_SRC} \

# xosnadir USRCXXFLAGS
#
xosnadir_USRCXXFLAGS += \

# xosnadir USRLIBDIRS
#
xosnadir_USRLIBDIRS += \
-L${NADIR_LIB} \

# xosnadir LIBS
#
xosnadir_LIBS += \
-lxosnadir \

# xosnadir FRAMEWORKS
#
xosnadir_FRAMEWORKS += \

########################################################################
# numera
NUMERA_VERSION_MAJOR = 0
NUMERA_VERSION_MINOR = 0
NUMERA_VERSION_RELEASE = 0
NUMERA_VERSION = ${NUMERA_VERSION_MAJOR}.${NUMERA_VERSION_MINOR}.${NUMERA_VERSION_RELEASE}
NUMERA_NAME = numera
NUMERA_GROUP = ${NUMERA_NAME}
NUMERA_VERSION_DIR = ${NUMERA_GROUP}/${NUMERA_NAME}-${NUMERA_VERSION}
NUMERA_DEPENDS_DIR = ${NUMERA_NAME}

#NUMERA_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${NUMERA_VERSION_DIR}
#NUMERA_PKG = ${OTHER_VERSION_PKG}/${NUMERA_VERSION_DIR}
NUMERA_PKG = ${OTHER_DEPENDS_PKG}/${NUMERA_DEPENDS_DIR}
#NUMERA_SRC = ${NUMERA_PKG}/src/${BN_GROUP}/${BN_NAME}
NUMERA_SRC = ${NUMERA_PKG}/src
NUMERA_BLD = ${NUMERA_PKG}/${BLD}/${BUILD_TYPE}
NUMERA_LIB = ${NUMERA_BLD}/lib
NUMERA_BIN = ${NUMERA_BLD}/bin

# numera USRDEFINES
#
numera_USRDEFINES += \

# numera USRINCLUDES
#
numera_USRINCLUDES += \
-I${NUMERA_SRC} \

# numera USRCXXFLAGS
#
numera_USRCXXFLAGS += \

# numera USRLIBDIRS
#
numera_USRLIBDIRS += \
-L${NUMERA_LIB} \

# numera LIBS
#
numera_LIBS += \
-lnumera \

# numera FRAMEWORKS
#
numera_FRAMEWORKS += \


########################################################################
# cifra

# cifra USRDEFINES
#
cifra_USRDEFINES += \
${bn_USRDEFINES} \
${mp_USRDEFINES} \
${mb_USRDEFINES} \
${mbuint_USRDEFINES} \
${rostra_USRDEFINES} \
${xosnadir_USRDEFINES} \
${numera_USRDEFINES} \
${build_cifra_USRDEFINES} \

# cifra USRINCLUDES
#
cifra_USRINCLUDES += \
-I${CIFRA_SRC} \
${numera_USRINCLUDES} \
${xosnadir_USRINCLUDES} \
${rostra_USRINCLUDES} \
${mbuint_USRINCLUDES} \
${mb_USRINCLUDES} \
${mp_USRINCLUDES} \
${bn_USRINCLUDES} \
${build_cifra_USRINCLUDES} \

# cifra USRCXXFLAGS
#
cifra_USRCXXFLAGS += \
${bn_USRCXXFLAGS} \
${mp_USRCXXFLAGS} \
${mb_USRCXXFLAGS} \
${mbuint_USRCXXFLAGS} \
${rostra_USRCXXFLAGS} \
${xosnadir_USRCXXFLAGS} \
${numera_USRCXXFLAGS} \
${build_cifra_USRCXXFLAGS} \

# cifra USRLIBDIRS
#
cifra_USRLIBDIRS += \
-L${CIFRA_LIB} \
${xosnadir_USRLIBDIRS} \
${build_cifra_USRLIBDIRS} \

_cifra_USRLIBDIRS += \
${numera_USRLIBDIRS} \
${rostra_USRLIBDIRS} \
${mbuint_USRLIBDIRS} \
${mb_USRLIBDIRS} \
${mp_USRLIBDIRS} \
${bn_USRLIBDIRS} \

# cifra LIBS
#
cifra_LIBS += \
-lcifra \
${xosnadir_LIBS} \
${build_cifra_LIBS} \

_cifra_LIBS += \
${numera_LIBS} \
${rostra_LIBS} \
${mbuint_LIBS} \
${mb_LIBS} \
${mp_LIBS} \
${bn_LIBS} \

########################################################################

