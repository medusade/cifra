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
#   File: libmbuint.pri
#
# Author: $author$
#   Date: 3/18/2018
#
# QtCreator .pri file for generic library libmbuint
########################################################################

########################################################################
# libmbuint

# libmbuint TARGET
#
libmbuint_TARGET = mbuint
libmbuint_TEMPLATE = lib
libmbuint_CONFIG += staticlib

# libmbuint INCLUDEPATH
#
libmbuint_INCLUDEPATH += \
$${generic_INCLUDEPATH} \

# libmbuint DEFINES
#
libmbuint_DEFINES += \
$${generic_DEFINES} \

########################################################################
# libmbuint OBJECTIVE_HEADERS
#
#libmbuint_OBJECTIVE_HEADERS += \
#$${GENERIC_SRC}/generic/base/Base.hh \

# libmbuint OBJECTIVE_SOURCES
#
#libmbuint_OBJECTIVE_SOURCES += \
#$${GENERIC_SRC}/generic/base/Base.mm \

########################################################################
# libmbuint HEADERS
#
libmbuint_HEADERS += \
$${GENERIC_SRC}/etiris/generic/mbuint.h \

# libmbuint SOURCES
#
libmbuint_SOURCES += \
$${GENERIC_SRC}/etiris/generic/mbuint.c \

########################################################################



