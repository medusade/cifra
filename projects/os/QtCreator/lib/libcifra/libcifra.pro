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
#   File: libcifra.pro
#
# Author: $author$
#   Date: 3/2/2018
#
# QtCreator .pro file for cifra library libcifra
########################################################################
include(../../../../../build/QtCreator/cifra.pri)
include(../../../../QtCreator/cifra.pri)
include(../../cifra.pri)
include(../../../../QtCreator/lib/libcifra/libcifra.pri)

TARGET = $${libcifra_TARGET}
TEMPLATE = $${libcifra_TEMPLATE}
CONFIG += $${libcifra_CONFIG}

########################################################################
INCLUDEPATH += \
$${libcifra_INCLUDEPATH} \

DEFINES += \
$${libcifra_DEFINES} \

########################################################################
HEADERS += \
$${libcifra_HEADERS} \

SOURCES += \
$${libcifra_SOURCES} \

########################################################################


