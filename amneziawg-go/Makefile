include $(TOPDIR)/rules.mk

PKG_NAME:=amneziawg-go
PKG_VERSION:=20250628
PKG_RELEASE:=$(AUTORELEASE)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/andrewz1/amneziawg-go.git
PKG_SOURCE_DATE:=2025-06-28
PKG_SOURCE_VERSION:=2eae5bc9f7699f414c591c4eb306bf1f3d084e90

PKG_MAINTAINER:=andrewz13 <andrewz13@ya.ru>
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Build/Compile
	export $(GO_PKG_TARGET_VARS) CGO_ENABLED=0 && make -C $(PKG_BUILD_DIR) clean all
endef

define Package/amneziawg-go
  CATEGORY:=Network
  URL:=https://amnezia.org/
  MAINTAINER:=Amnezia Admin <admin@amnezia.org>
  TITLE:=AmneziaWG userspace daemon (amneziawg-go)
  DEPENDS:=$(GO_ARCH_DEPENDS)
  EXTRA_DEPENDS:=kmod-tun
endef

define Package/amneziawg-go/description
  This is userspace inmplementation of AmneziaWG using tun
endef

define Package/amneziawg-go/install
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/amneziawg-go $(1)/usr/bin/amneziawg-go
endef

$(eval $(call BuildPackage,amneziawg-go))
