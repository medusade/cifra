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
#   File: libcifra.pro
#
# Author: $author$
#   Date: 2/26/2024
#
# os specific QtCreator project .pro file for medusade framework cifra static library libcifra
########################################################################
# Depends: bn;mp;mbuint;rostra;nadir;numera
#
# Debug: cifra/build/os/QtCreator/Debug/lib/libcifra
# Release: cifra/build/os/QtCreator/Release/lib/libcifra
# Profile: cifra/build/os/QtCreator/Profile/lib/libcifra
#
include(../../../../../build/QtCreator/cifra.pri)
include(../../../../QtCreator/cifra.pri)
include(../../cifra.pri)
include(../../../../QtCreator/lib/libcifra/libcifra.pri)

TARGET = $${libcifra_TARGET}
TEMPLATE = $${libcifra_TEMPLATE}
CONFIG += $${libcifra_CONFIG}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${libcifra_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${libcifra_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${libcifra_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${libcifra_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${libcifra_HEADERS} \
$${libcifra_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${libcifra_SOURCES} \

########################################################################
