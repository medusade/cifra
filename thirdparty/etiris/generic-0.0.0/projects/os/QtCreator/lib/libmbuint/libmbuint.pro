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
#   File: libmbuint.pro
#
# Author: $author$
#   Date: 3/18/2018
#
# QtCreator .pro file for generic library libmbuint
########################################################################
include(../../../../../build/QtCreator/generic.pri)
include(../../../../QtCreator/generic.pri)
include(../../generic.pri)
include(../../../../QtCreator/lib/libmbuint/libmbuint.pri)

TARGET = $${libmbuint_TARGET}
TEMPLATE = $${libmbuint_TEMPLATE}
CONFIG += $${libmbuint_CONFIG}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${libmbuint_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${libmbuint_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${libmbuint_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
SOURCES += \
$${libmbuint_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${libmbuint_HEADERS} \

# SOURCES
#
SOURCES += \
$${libmbuint_SOURCES} \
$${OBJECTIVE_SOURCES} \

########################################################################


