
##############################################################
#
# AESDSOCKET
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#AESDSOCKET_VERSION = 3c27fc8ce151a6486815e89765cdd89f944993be
#AESDSOCKET_VERSION = b33b7d9b2fd716c04d1c782eece0f88a1a9e0dc6
#AESDSOCKET_VERSION = ad4b38a48e07ee212cd8b6b6ebb2393b8b6f5329
AESDSOCKET_VERSION = 2610036fc9ff6d7ec10ca3a6a02f62e04815c104
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDSOCKET_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-rdubois440.git
AESDSOCKET_SITE_METHOD = git
AESDSOCKET_GIT_SUBMODULES = YES

define AESDSOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESDSOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
