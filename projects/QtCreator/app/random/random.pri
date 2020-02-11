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
#   File: random.pri
#
# Author: $author$
#   Date: 2/9/2020
#
# QtCreator .pri file for cifra executable random
########################################################################

########################################################################
# random

# random TARGET
#
random_TARGET = random

# random INCLUDEPATH
#
random_INCLUDEPATH += \
$${cifra_INCLUDEPATH} \

# random DEFINES
#
random_DEFINES += \
$${cifra_DEFINES} \

########################################################################
# random OBJECTIVE_HEADERS
#
#random_OBJECTIVE_HEADERS += \
#$${CIFRA_SRC}/cifra/base/Base.hh \

# random OBJECTIVE_SOURCES
#
#random_OBJECTIVE_SOURCES += \
#$${CIFRA_SRC}/cifra/base/Base.mm \

########################################################################
# random HEADERS
#
random_HEADERS += \
$${CIFRA_SRC}/cifra/crypto/random/generator.hpp \
$${CIFRA_SRC}/cifra/crypto/random/pseudo/generator.hpp \
\
$${CIFRA_SRC}/cifra/app/console/random/main_opt.hpp \
$${CIFRA_SRC}/cifra/app/console/random/main.hpp \
$${CIFRA_SRC}/cifra/console/main_main.hpp \

# random SOURCES
#
random_SOURCES += \
$${CIFRA_SRC}/cifra/crypto/random/pseudo/generator.cpp \
\
$${CIFRA_SRC}/cifra/app/console/random/main_opt.cpp \
$${CIFRA_SRC}/cifra/app/console/random/main.cpp \
$${CIFRA_SRC}/cifra/console/main_main.cpp \

########################################################################
# random FRAMEWORKS
#
random_FRAMEWORKS += \
$${cifra_FRAMEWORKS} \

# random LIBS
#
random_LIBS += \
$${cifra_LIBS} \


