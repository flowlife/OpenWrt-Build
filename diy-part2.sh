#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.6.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# update feed
rm -rf feeds/luci/themes/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes
rm -rf feeds/luci/themes/luci-theme-argonv2
rm -rf feeds/luci/themes/luci-theme-argonv3
rm -rf feeds/luci/applications/luci-app-argon-config && git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git feeds/luci/applications
rm -rf feeds/kenzo/luci-theme-argon
rm -rf feeds/kenzo/luci-app-argon-config
rm -rf feeds/kenzo/luci-theme-argone
rm -rf feeds/kenzo/luci-app-argone-config
rm -rf feeds/luci/applications/luci-app-passwall &&svn co https://github.com/xiaorouji/branches/main/openwrt-passwall feeds/luci/applications/luci-app-passwall
rm -rf feeds/packages/net/xray-core && svn co https://github.com/immortalwrt/packages/branches/openwrt-21.02/net/xray-core feeds/packages/net/xray-core
rm -rf feeds/packages/lang/golang && svn co https://github.com/immortalwrt/packages/branches/openwrt-21.02/lang/golang feeds/packages/lang/golang
rm -rf package/base-files/files/etc && svn co https://github.com/immortalwrt/immortalwrt/branches/openwrt-18.06-k5.4/package/base-files/files/etc package/base-files/files/etc
