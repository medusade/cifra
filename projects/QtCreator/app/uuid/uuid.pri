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
#   File: uuid.pri
#
# Author: $author$
#   Date: 2/26/2024
#
# generic QtCreator project file for medusade framework cifra executable uuid
########################################################################

########################################################################
# uuid

# uuid TARGET
#
uuid_TARGET = uuid

# uuid INCLUDEPATH
#
uuid_INCLUDEPATH += \
$${cifra_INCLUDEPATH} \

# uuid DEFINES
#
uuid_DEFINES += \
$${cifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# uuid OBJECTIVE_HEADERS
#
#uuid_OBJECTIVE_HEADERS += \
#$${CIFRA_SRC}/xos/app/console/uuid/main.hh \

# uuid OBJECTIVE_SOURCES
#
#uuid_OBJECTIVE_SOURCES += \
#$${CIFRA_SRC}/xos/app/console/uuid/main.mm \

########################################################################
# uuid HEADERS
#
uuid_HEADERS += \
$${CIFRA_SRC}/cifra/network/ethernet/actual/address.hpp \
$${CIFRA_SRC}/cifra/network/ethernet/address.hpp \
$${CIFRA_SRC}/cifra/network/ethernet/posix/address.hpp \
\
$${CIFRA_SRC}/cifra/universal/unique/actual/identifier.hpp \
$${CIFRA_SRC}/cifra/universal/unique/identifier.hpp \
$${CIFRA_SRC}/cifra/universal/unique/posix/identifier.hpp \
\
$${CIFRA_SRC}/cifra/console/main.hpp \
$${CIFRA_SRC}/cifra/console/main_main.hpp \
$${CIFRA_SRC}/cifra/app/console/uuid/main_opt.hpp \
$${CIFRA_SRC}/cifra/app/console/uuid/main.hpp \

# uuid SOURCES
#
uuid_SOURCES += \
$${CIFRA_SRC}/cifra/network/ethernet/posix/address.cpp \
\
$${CIFRA_SRC}/cifra/universal/unique/posix/identifier.cpp \
\
$${CIFRA_SRC}/cifra/console/main_main.cpp \
$${CIFRA_SRC}/cifra/app/console/uuid/main_opt.cpp \
$${CIFRA_SRC}/cifra/app/console/uuid/main.cpp \

########################################################################
# uuid FRAMEWORKS
#
uuid_FRAMEWORKS += \
$${cifra_FRAMEWORKS} \

# uuid LIBS
#
uuid_LIBS += \
$${cifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core
