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
#   File: hash.pri
#
# Author: $author$
#   Date: 3/14/2019
#
# QtCreator .pri file for cifra executable hash
########################################################################

########################################################################
# hash

# hash TARGET
#
hash_TARGET = hash

# hash INCLUDEPATH
#
hash_INCLUDEPATH += \
$${cifra_INCLUDEPATH} \

# hash DEFINES
#
hash_DEFINES += \
$${cifra_DEFINES} \

########################################################################
# hash OBJECTIVE_HEADERS
#
#hash_OBJECTIVE_HEADERS += \
#$${CIFRA_SRC}/cifra/base/Base.hh \

# hash OBJECTIVE_SOURCES
#
#hash_OBJECTIVE_SOURCES += \
#$${CIFRA_SRC}/cifra/base/Base.mm \

########################################################################
# hash HEADERS
#
hash_HEADERS += \
$${CIFRA_SRC}/cifra/app/console/hash/main.hpp \

# hash SOURCES
#
hash_SOURCES += \
$${CIFRA_SRC}/cifra/app/console/hash/main.cpp \

########################################################################
# hash FRAMEWORKS
#
hash_FRAMEWORKS += \
$${cifra_FRAMEWORKS} \

# hash LIBS
#
hash_LIBS += \
$${cifra_LIBS} \


