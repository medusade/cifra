########################################################################
# Copyright (c) 1988-2020 $organization$
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
#   File: ethernet.pri
#
# Author: $author$
#   Date: 2/11/2020
#
# QtCreator .pri file for cifra executable ethernet
########################################################################

########################################################################
# ethernet

# ethernet TARGET
#
ethernet_TARGET = ethernet

# ethernet INCLUDEPATH
#
ethernet_INCLUDEPATH += \
$${cifra_INCLUDEPATH} \

# ethernet DEFINES
#
ethernet_DEFINES += \
$${cifra_DEFINES} \

########################################################################
# ethernet OBJECTIVE_HEADERS
#
#ethernet_OBJECTIVE_HEADERS += \
#$${CIFRA_SRC}/cifra/base/Base.hh \

# ethernet OBJECTIVE_SOURCES
#
#ethernet_OBJECTIVE_SOURCES += \
#$${CIFRA_SRC}/cifra/base/Base.mm \

########################################################################
# ethernet HEADERS
#
ethernet_HEADERS += \
$${CIFRA_SRC}/cifra/network/ethernet/actual/address.hpp \
$${CIFRA_SRC}/cifra/network/ethernet/address.hpp \
$${CIFRA_SRC}/cifra/network/ethernet/posix/address.hpp \
\
$${CIFRA_SRC}/cifra/app/console/ethernet/main_opt.hpp \
$${CIFRA_SRC}/cifra/app/console/ethernet/main.hpp \
$${CIFRA_SRC}/cifra/console/main_main.hpp \

# ethernet SOURCES
#
ethernet_SOURCES += \
$${CIFRA_SRC}/cifra/network/ethernet/posix/address.cpp \
\
$${CIFRA_SRC}/cifra/app/console/ethernet/main_opt.cpp \
$${CIFRA_SRC}/cifra/app/console/ethernet/main.cpp \
$${CIFRA_SRC}/cifra/console/main_main.cpp \

########################################################################
# ethernet FRAMEWORKS
#
ethernet_FRAMEWORKS += \
$${cifra_FRAMEWORKS} \

# ethernet LIBS
#
ethernet_LIBS += \
$${cifra_LIBS} \


