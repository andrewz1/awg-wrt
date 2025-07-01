#
# Copyright (C) 2016 Dan Luedtke <mail@danrl.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_VERSION:=20250701
PKG_RELEASE:=$(AUTORELEASE)

LUCI_TITLE:=Support for AmneziaWG VPN
LUCI_DEPENDS:=+amneziawg-tools +ucode +luci-lib-uqr +resolveip
LUCI_PKGARCH:=all

PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Dan Luedtke <mail@danrl.com>

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
