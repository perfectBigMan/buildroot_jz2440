################################################################################
#
# yaffs2utils
#
################################################################################

YAFFS2UTILS_VERSION = 
YAFFS2UTILS_SOURCE = jz2440_yaffs2.tar.gz
YAFFS2UTILS_SITE_METHOD := local
YAFFS2UTILS_LICENSE = 
YAFFS2UTILS_LICENSE_FILES = COPYING

define HOST_YAFFS2UTILS_BUILD_CMDS
	$(HOST_MAKE_ENV) $(MAKE) -C $(@D)/utils
endef

define HOST_YAFFS2UTILS_INSTALL_CMDS
	$(HOST_MAKE_ENV) $(MAKE) -C $(@D)/utils INSTALLDIR=$(HOST_DIR)/bin install
endef

$(eval $(host-generic-package))
