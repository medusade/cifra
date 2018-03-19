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
#   File: rsa.pri
#
# Author: $author$
#   Date: 3/13/2018
#
# QtCreator .pri file for cifra executable rsa
########################################################################

########################################################################
# rsa

# rsa TARGET
#
rsa_TARGET = rsa

# rsa INCLUDEPATH
#
rsa_INCLUDEPATH += \
$${cifra_INCLUDEPATH} \

# rsa DEFINES
#
rsa_DEFINES += \
$${cifra_DEFINES} \

########################################################################
# rsa OBJECTIVE_HEADERS
#
#rsa_OBJECTIVE_HEADERS += \
#$${CIFRA_SRC}/cifra/base/Base.hh \

# rsa OBJECTIVE_SOURCES
#
#rsa_OBJECTIVE_SOURCES += \
#$${CIFRA_SRC}/cifra/base/Base.mm \

########################################################################
# rsa HEADERS
#
rsa_HEADERS += \
$${CIFRA_SRC}/cifra/base/base.hpp \
\
$${CIFRA_SRC}/cifra/crypto/rsa/key.hpp \
$${CIFRA_SRC}/cifra/crypto/rsa/public_key.hpp \
$${CIFRA_SRC}/cifra/crypto/rsa/private_key.hpp \
\
$${CIFRA_SRC}/cifra/crypto/rsa/bn/key.hpp \
$${CIFRA_SRC}/cifra/crypto/rsa/bn/public_key.hpp \
$${CIFRA_SRC}/cifra/crypto/rsa/bn/private_key.hpp \
\
$${CIFRA_SRC}/cifra/crypto/rsa/mp/key.hpp \
$${CIFRA_SRC}/cifra/crypto/rsa/mp/public_key.hpp \
$${CIFRA_SRC}/cifra/crypto/rsa/mp/private_key.hpp \
\
$${CIFRA_SRC}/cifra/crypto/rsa/mb/key.hpp \
$${CIFRA_SRC}/cifra/crypto/rsa/mb/public_key.hpp \
$${CIFRA_SRC}/cifra/crypto/rsa/mb/private_key.hpp \
\
$${CIFRA_SRC}/cifra/console/main.hpp \
$${CIFRA_SRC}/cifra/console/mp/main_opt.hpp \
$${CIFRA_SRC}/cifra/console/mp/main.hpp \
\
$${CIFRA_SRC}/cifra/app/console/rsa/public.hpp \
$${CIFRA_SRC}/cifra/app/console/rsa/private.hpp \
$${CIFRA_SRC}/cifra/app/console/rsa/main.hpp \

# rsa SOURCES
#
rsa_SOURCES += \
$${CIFRA_SRC}/cifra/base/base.cpp \
\
$${CIFRA_SRC}/cifra/crypto/rsa/mb/key.cpp \
$${CIFRA_SRC}/cifra/crypto/rsa/mb/public_key.cpp \
$${CIFRA_SRC}/cifra/crypto/rsa/mb/private_key.cpp \
\
$${CIFRA_SRC}/cifra/console/main_main.cpp \
$${CIFRA_SRC}/cifra/console/mp/main_opt.cpp \
\
$${CIFRA_SRC}/cifra/app/console/rsa/public.cpp \
$${CIFRA_SRC}/cifra/app/console/rsa/private.cpp \
$${CIFRA_SRC}/cifra/app/console/rsa/main.cpp \

########################################################################
# rsa FRAMEWORKS
#
rsa_FRAMEWORKS += \
$${cifra_FRAMEWORKS} \

# rsa LIBS
#
rsa_LIBS += \
$${cifra_LIBS} \
