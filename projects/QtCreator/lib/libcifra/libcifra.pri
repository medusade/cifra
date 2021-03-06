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
#   File: libcifra.pri
#
# Author: $author$
#   Date: 3/12/2019
#
# QtCreator .pri file for cifra library libcifra
########################################################################

########################################################################
# libcifra

# libcifra TARGET
#
libcifra_TARGET = cifra
libcifra_TEMPLATE = lib
libcifra_CONFIG += staticlib

# libcifra INCLUDEPATH
#
libcifra_INCLUDEPATH += \
$${cifra_INCLUDEPATH} \

# libcifra DEFINES
#
libcifra_DEFINES += \
$${cifra_DEFINES} \

########################################################################
# libcifra OBJECTIVE_HEADERS
#
#libcifra_OBJECTIVE_HEADERS += \
#$${CIFRA_SRC}/cifra/base/Base.hh \

# libcifra OBJECTIVE_SOURCES
#
#libcifra_OBJECTIVE_SOURCES += \
#$${CIFRA_SRC}/cifra/base/Base.mm \

########################################################################
# libcifra HEADERS
#
libcifra_HEADERS += \
$${CIFRA_SRC}/cifra/base/base.hpp \
\
$${CIFRA_SRC}/cifra/crypto/base/base.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/base.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/mac.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/md5.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/sha1.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/sha256.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/sha512.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/openssl/md5.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/openssl/sha1.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/openssl/sha256.hpp \
$${CIFRA_SRC}/cifra/crypto/hash/openssl/sha512.hpp \
\
$${CIFRA_SRC}/cifra/lib/version.hpp \
$${CIFRA_SRC}/cifra/lib/cifra/version.hpp \

# libcifra SOURCES
#
libcifra_SOURCES += \
$${CIFRA_SRC}/cifra/crypto/hash/base.cpp \
$${CIFRA_SRC}/cifra/crypto/hash/mac.cpp \
$${CIFRA_SRC}/cifra/crypto/hash/openssl/md5.cpp \
$${CIFRA_SRC}/cifra/crypto/hash/openssl/sha1.cpp \
$${CIFRA_SRC}/cifra/crypto/hash/openssl/sha256.cpp \
$${CIFRA_SRC}/cifra/crypto/hash/openssl/sha512.cpp \
\
$${CIFRA_SRC}/cifra/lib/cifra/version.cpp \

########################################################################



