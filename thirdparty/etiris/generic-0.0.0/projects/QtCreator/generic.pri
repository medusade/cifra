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
#   File: generic.pri
#
# Author: $author$
#   Date: 3/18/2018
#
# QtCreator .pri file for generic
########################################################################

OTHER_PKG = ../../../../../../..
OTHER_PRJ = ../../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/src/$${THIRDPARTY_NAME}

########################################################################
# generic
FRAMEWORK_NAME = generic

GENERIC_PKG = ../../../../..
GENERIC_BLD = ../..

GENERIC_PRJ = $${GENERIC_PKG}
GENERIC_BIN = $${GENERIC_BLD}/bin
GENERIC_LIB = $${GENERIC_BLD}/lib
GENERIC_SRC = $${GENERIC_PKG}/src

# generic BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
generic_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
generic_DEFINES += RELEASE_BUILD
}

# generic INCLUDEPATH
#
generic_INCLUDEPATH += \
$${GENERIC_SRC} \
$${GENERIC_SRC}/etiris \
$${build_generic_INCLUDEPATH} \

# generic DEFINES
#
generic_DEFINES += \
$${build_generic_DEFINES} \

# generic LIBS
#
generic_LIBS += \
-L$${GENERIC_LIB}/lib$${FRAMEWORK_NAME} \
-l$${FRAMEWORK_NAME} \
