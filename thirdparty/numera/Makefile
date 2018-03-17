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
#   Date: 3/13/2018
#
# Thirdparty Gcc Makefile for numera
########################################################################


########################################################################
#
# numera defs
#
########################################################################
NUMERA_MAKEDIR=$(PWD)

NUMERA_THIRDPARTY = $(NUMERA_MAKEDIR)/..
#NUMERA_BUILD_HOME = $(NUMERA_THIRDPARTY)

ifndef NUMERA_UNAME
NUMERA_UNAME = $(shell uname)
endif

ifndef NUMERA_OS
ifneq ($(NUMERA_UNAME),Darwin)
NUMERA_OS = linux
else
NUMERA_OS = macosx
endif
endif

#
# numera version
#
NUMERA_VERSION_MAJOR = 0
NUMERA_VERSION_MINOR = 0
NUMERA_VERSION_RELEASE = 0

NUMERA_VERSION_SEPARATOR = .
NUMERA_VERSION_MAJOR_SEPARATOR = $(NUMERA_VERSION_SEPARATOR)
NUMERA_VERSION_MINOR_SEPARATOR = $(NUMERA_VERSION_SEPARATOR)

NUMERA_VERSION_SHORT = $(NUMERA_VERSION_MAJOR)$(NUMERA_VERSION_MINOR)$(NUMERA_VERSION_RELEASE)
NUMERA_VERSION = $(NUMERA_VERSION_MAJOR)$(NUMERA_VERSION_MAJOR_SEPARATOR)$(NUMERA_VERSION_MINOR)$(NUMERA_VERSION_MINOR_SEPARATOR)$(NUMERA_VERSION_RELEASE)

#
# numera name
#
NUMERA_NAME_SEPARATOR = -
NUMERA_NAME_BASE = numera
NUMERA_NAME = $(NUMERA_NAME_BASE)$(NUMERA_NAME_SEPARATOR)$(NUMERA_VERSION)
NUMERA_INSTALL_NAME_SEPARATOR = -
NUMERA_INSTALL_NAME = $(NUMERA_NAME_BASE)$(NUMERA_INSTALL_NAME_SEPARATOR)$(NUMERA_VERSION)
NUMERA_DIR = $(NUMERA_NAME)

#
# numera archive
#
NUMERA_ARCHIVED = tar
NUMERA_COMPRESSED = gz
NUMERA_ARCHIVE_SEPARATOR = .
NUMERA_ARCHIVED_SEPARATOR = $(NUMERA_ARCHIVE_SEPARATOR)
NUMERA_COMPRESSED_SEPARATOR = $(NUMERA_ARCHIVE_SEPARATOR)

NUMERA_EXTRACT_DIR = $(NUMERA_NAME)
NUMERA_TGZ_PREFIX = 
NUMERA_TGZ = $(NUMERA_NAME)$(NUMERA_TGZ_PREFIX)$(NUMERA_ARCHIVED_SEPARATOR)$(NUMERA_ARCHIVED)$(NUMERA_COMPRESSED_SEPARATOR)$(NUMERA_COMPRESSED)
NUMERA_PATCH_TGZ_PREFIX = $(NUMERA_NAME_SEPARATOR)patch
NUMERA_PATCH_TGZ = $(NUMERA_NAME)$(NUMERA_PATCH_TGZ_PREFIX)$(NUMERA_ARCHIVED_SEPARATOR)$(NUMERA_ARCHIVED)$(NUMERA_COMPRESSED_SEPARATOR)$(NUMERA_COMPRESSED)
NUMERA_DOCS_TGZ_PREFIX = $(NUMERA_NAME_SEPARATOR)docs
NUMERA_DOCS_TGZ = $(NUMERA_NAME)$(NUMERA_DOCS_TGZ_PREFIX)$(NUMERA_ARCHIVED_SEPARATOR)$(NUMERA_ARCHIVED)$(NUMERA_COMPRESSED_SEPARATOR)$(NUMERA_COMPRESSED)

#
# numera extract
#
ifeq ($(NUMERA_ARCHIVED),tar)
ifeq ($(NUMERA_COMPRESSED),gz)
NUMERA_TAR_UNCOMPRESS = z
NUMERA_TAR_COMPRESS = z
else
ifeq ($(NUMERA_COMPRESSED),bz2)
NUMERA_TAR_UNCOMPRESS = j
NUMERA_TAR_COMPRESS = j
else
ifeq ($(NUMERA_COMPRESSED),xz)
NUMERA_TAR_UNCOMPRESS = J
NUMERA_TAR_COMPRESS = J
else
endif
endif
endif
NUMERA_LIST = tar -tv$(NUMERA_TAR_UNCOMPRESS)f
NUMERA_EXTRACT = tar -x$(NUMERA_TAR_UNCOMPRESS)f
NUMERA_ARCHIVE = tar -cv$(NUMERA_TAR_COMPRESS)f
else
ifeq ($(NUMERA_ARCHIVED),zip)
NUMERA_LIST = unzip -l
NUMERA_EXTRACT = unzip
NUMERA_ARCHIVE = zip
else
NUMERA_LIST = echo unable to list
NUMERA_EXTRACT = echo unable to extract
NUMERA_ARCHIVE = echo unable to archive
endif
endif

NUMERA_LIST_TGZ = $(NUMERA_LIST) $(NUMERA_TGZ)
NUMERA_EXTRACT_TGZ = $(NUMERA_EXTRACT) $(NUMERA_TGZ)
NUMERA_TOUCH_EXTRACT = touch $(NUMERA_DIR)
NUMERA_REMOVE_DIR = $(NUMERA_REMOVE) $(NUMERA_DIR)

NUMERA_LIST_PATCH = $(NUMERA_LIST)
NUMERA_EXTRACT_PATCH = $(NUMERA_EXTRACT)
NUMERA_LIST_PATCH_TGZ = $(NUMERA_LIST_PATCH) $(NUMERA_PATCH_TGZ)
NUMERA_EXTRACT_PATCH_TGZ = $(NUMERA_EXTRACT_PATCH) $(NUMERA_PATCH_TGZ)

NUMERA_LIST_DOCS = $(NUMERA_LIST)
NUMERA_EXTRACT_DOCS = $(NUMERA_EXTRACT)
NUMERA_LIST_DOCS_TGZ = $(NUMERA_LIST_DOCS) $(NUMERA_DOCS_TGZ)
NUMERA_EXTRACT_DOCS_TGZ = $(NUMERA_EXTRACT_DOCS) $(NUMERA_DOCS_TGZ) -C$(NUMERA_DOCS_PREFIX)

#
# numera build
#
ifndef NUMERA_BUILD_HOME
NUMERA_BUILD = $(HOME)/build
else
NUMERA_BUILD = $(NUMERA_BUILD_HOME)/build
endif
NUMERA_PREFIX = $(NUMERA_BUILD)/$(NUMERA_INSTALL_NAME)
NUMERA_EXEC_PREFIX = $(NUMERA_PREFIX)
NUMERA_CONF_PREFIX = $(NUMERA_PREFIX)
NUMERA_DOCS_PREFIX = $(NUMERA_PREFIX)
NUMERA_LINK_NAME = $(NUMERA_BUILD)/$(NUMERA_NAME_BASE)

NUMERA_MKDIR = mkdir -p
NUMERA_REMOVE = rm -r -f

NUMERA_MAKE_DIR = $(NUMERA_DIR)
NUMERA_MAKE_PUSHD = pushd $(NUMERA_MAKE_DIR)
NUMERA_MAKE = make

#
# numera configure
#
ifneq ($(NUMERA_UNAME), Darwin)
NUMERA_CONFIGURE_UNAME = 
else
NUMERA_CONFIGURE_UNAME = 
endif
NUMERA_CONFIGURE_CONFIGURE = ./configure
NUMERA_CONFIGURE_HELP = $(NUMERA_CONFIGURE_CONFIGURE) --help
NUMERA_CONFIGURE_PUSHD = pushd $(NUMERA_MAKE_DIR)
NUMERA_CONFIGURE = $(NUMERA_CONFIGURE_CONFIGURE) \
$(NUMERA_CONFIGURE_UNAME) --prefix=$(NUMERA_PREFIX) --exec_prefix=$(NUMERA_EXEC_PREFIX)

#
# numera help
#
NUMERA_HELP = $(NUMERA_CONFIGURE_HELP)

########################################################################
#
# rules
#
########################################################################

all: build

package: archive unextract

again: unextract build

test: test-numera

install-links: install-numera-links

install-docs: install-numera-docs

install-prefix: install-numera-prefix

install: install-numera

build: build-numera

clean: clean-numera

configed: configed-$(NUMERA_DIR)

config: config-$(NUMERA_DIR)

help: help-numera

list-docs: list-numera-docs

list-patch: list-numera-patch

extract-patch: extract-numera-patch

list: list-numera

extract: extract-numera

unextract: unextract-numera

archive: archive-numera

linked: numera-linked

prefixed: numera-prefixed

archived: numera-archived

extracted: numera-extracted

########################################################################
#
# numera rules
#
########################################################################

#
# Help numera
#
help-numera: $(NUMERA_DIR)
	@($(NUMERA_CONFIGURE_PUSHD);\
	  (($(NUMERA_HELP)) || (exit 1));\
	  popd)

#
# Install numera
#
install-numera: configed-$(NUMERA_DIR)
	@(echo Installing $(NUMERA_DIR)...;\
	  $(NUMERA_MAKE_PUSHD);\
	  (($(NUMERA_MAKE) install) || (exit 1)) && \
	  ((touch $(NUMERA_MAKEDIR)/configed-$(NUMERA_DIR)) || (exit 1));\
	  popd)
	  
#
# Build numera
#
build-numera: configed-$(NUMERA_DIR)
	@(echo Building $(NUMERA_DIR)...;\
	  $(NUMERA_MAKE_PUSHD);\
	  (($(NUMERA_MAKE)) || (exit 1)) && \
	  ((touch $(NUMERA_MAKEDIR)/configed-$(NUMERA_DIR)) || (exit 1));\
	  popd)
	  
#
# Clean numera
#
clean-numera: configed-$(NUMERA_DIR)
	@(echo Cleaning $(NUMERA_DIR)...;\
	  $(NUMERA_MAKE_PUSHD);\
	  (($(NUMERA_MAKE) clean) || (exit 1)) && \
	  ((touch $(NUMERA_MAKEDIR)/configed-$(NUMERA_DIR)) || (exit 1));\
	  popd)
	  
#
# Test numera
#
test-numera: configed-$(NUMERA_DIR)
	@(echo Building test $(NUMERA_DIR)...;\
	  $(NUMERA_MAKE_PUSHD);\
	  (($(NUMERA_MAKE) test) || (exit 1)) && \
	  ((touch $(NUMERA_MAKEDIR)/configed-$(NUMERA_DIR)) || (exit 1));\
	  popd)
	  
#
# Config numera
#
config-$(NUMERA_DIR): unconfig-$(NUMERA_DIR) configed-$(NUMERA_DIR)

unconfig-$(NUMERA_DIR):
	@(rm -f configed-$(NUMERA_DIR))

configed-$(NUMERA_DIR): $(NUMERA_DIR)
	@(echo Configing $(NUMERA_DIR)...;\
	  $(NUMERA_CONFIGURE_PUSHD);\
	  (($(NUMERA_CONFIGURE)) || (exit 1)) && \
	  ((touch $(NUMERA_DIR)) || (exit 1)) && \
	  ((touch $(NUMERA_MAKEDIR)/configed-$(NUMERA_DIR)) || (exit 1));\
	  popd)

########################################################################
# docs
########################################################################

#
# List numera Docs
#
list-numera-docs: $(NUMERA_DOCS_TGZ)
	@(echo Listing $(NUMERA_DOCS_TGZ)...;\
	  (($(NUMERA_LIST_DOCS_TGZ)) || (exit 1)))

#
# Install numera Docs
#
install-numera-docs: $(NUMERA_DOCS_PREFIX)
	@(echo Extracting $(NUMERA_DOCS_TGZ)...;\
	  (($(NUMERA_EXTRACT_DOCS_TGZ)) || (exit 1)))

########################################################################
# patch
########################################################################

#
# List numera Patch
#
list-numera-patch: $(NUMERA_PATCH_TGZ)
	@(echo Listing $(NUMERA_PATCH_TGZ)...;\
	  (($(NUMERA_LIST_PATCH_TGZ)) || (exit 1)))

#
# Extract numera patch
#
extract-numera-patch: $(NUMERA_DIR)
	@(echo Extracting $(NUMERA_PATCH_TGZ)...;\
	  (($(NUMERA_EXTRACT_PATCH_TGZ)) || (exit 1)))

########################################################################
# archive
########################################################################

#
# List numera
#
list-numera: 
	@(echo Listing $(NUMERA_TGZ)...;\
	  (($(NUMERA_LIST_TGZ)) || (exit 1)))

#
# numera extracted
#
numera-extracted: 
	@(echo $(NUMERA_EXTRACT) $(NUMERA_TGZ))

#
# Extract numera
#
extract-numera: unextract-numera $(NUMERA_DIR)

unextract-numera: unconfig-$(NUMERA_DIR)
	@(echo Removing $(NUMERA_DIR)...;\
	  (($(NUMERA_REMOVE_DIR)) || (exit 1)))

$(NUMERA_DIR): $(NUMERA_TGZ)
	@(echo Extracting $(NUMERA_TGZ)...;\
	  (($(NUMERA_EXTRACT_TGZ)) || (exit 1)) && \
	  (($(NUMERA_TOUCH_EXTRACT)) || (exit 1)))
	  
#
# numera archived
#
numera-archived: 
	@(echo $(NUMERA_TGZ))
	  
#
# Archive numera
#
archive-numera: 
	@(echo Archiving $(NUMERA_DIR) to $(NUMERA_TGZ)...;\
	  (($(NUMERA_ARCHIVE) $(NUMERA_TGZ) $(NUMERA_DIR)) || (exit 1)))

########################################################################
# links
########################################################################

#
# numera linked
#
numera-linked: 
	@echo link is $(NUMERA_LINK_NAME) "->" $(NUMERA_PREFIX)
	  
#
# Install numera links
#
install-numera-links: 
	@((echo removing $(NUMERA_LINK_NAME)) && \
	  ((rm -f $(NUMERA_LINK_NAME)) || (exit 1)) && \
	  (echo Linking $(NUMERA_LINK_NAME) "->" $(NUMERA_PREFIX)) && \
	  ((ln -s $(NUMERA_PREFIX) $(NUMERA_LINK_NAME)) || (exit 1)))
	  
########################################################################
# prefix
########################################################################

#
# numera prefixed
#
numera-prefixed: 
	@((echo prefix is $(NUMERA_PREFIX)) && \
	  (echo exec prefix is $(NUMERA_EXEC_PREFIX)) && \
	  (echo conf prefix is $(NUMERA_CONF_PREFIX)) && \
	  (echo docs prefix is $(NUMERA_DOCS_PREFIX)))
	  
#
# Install numera prefix
#
install-numera-prefix: 
	@((echo makeing $(NUMERA_PREFIX)) && \
	  ((mkdir -p $(NUMERA_PREFIX)) || (exit 1)) && \
	  (echo makeing $(NUMERA_EXEC_PREFIX)) && \
	  ((mkdir -p $(NUMERA_EXEC_PREFIX)) || (exit 1)))
	  
$(NUMERA_PREFIX):
	@(echo Makeing Directory $(NUMERA_PREFIX)...;\
	  (($(NUMERA_MKDIR) $(NUMERA_PREFIX)) || (exit 1)))

$(NUMERA_EXEC_PREFIX):
	@(echo Makeing Directory $(NUMERA_EXEC_PREFIX)...;\
	  (($(NUMERA_MKDIR) $(NUMERA_EXEC_PREFIX)) || (exit 1)))

$(NUMERA_CONF_PREFIX):
	@(echo Makeing Directory $(NUMERA_CONF_PREFIX)...;\
	  (($(NUMERA_MKDIR) $(NUMERA_CONF_PREFIX)) || (exit 1)))

$(NUMERA_DOCS_PREFIX):
	@(echo Makeing Directory $(NUMERA_DOCS_PREFIX)...;\
	  (($(NUMERA_MKDIR) $(NUMERA_DOCS_PREFIX)) || (exit 1)))

