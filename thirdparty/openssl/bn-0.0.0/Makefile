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
#   File: Makefile
#
# Author: $author$
#   Date: 3/11/2018
#
# Os Gcc Makefile for meta Makefile project
########################################################################

FWX = ..

include Makedefines

PRJ = projects/$(PRJ_OS)/Makefile/Gcc
TPRJ = thirdparty

#
# default
#
Framework = $(PRJ)
default = \
$(Framework)

#
# depends
#
depends = \


#
# Source subdirs
#
#SRC_DIRS = \
#$(PKG)/$(PRJ)/somedir \
#
ifndef SRC_DIR
SRC_DIRS = $(default)
else
SRC_DIRS = $(SRC_DIR)
endif

include Makedirs

#
# default
#
default:
	@(make SRC_DIR='$(default)' $(target))

Framework:
@(make SRC_DIR='$(Framework)' $(target))

#
# depends
#
depends:
	@(make SRC_DIR='$(depends)' $(target))



