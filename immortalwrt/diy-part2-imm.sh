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

# Modify default theme（FROM uci-theme-bootstrap CHANGE TO luci-theme-material）
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

# Modify default IP（FROM 192.168.1.1 CHANGE TO 10.10.10.1）
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

# Modify system hostname（FROM OpenWrt CHANGE TO OpenWrt-N1）
# sed -i 's/OpenWrt/OpenWrt-N1/g' package/base-files/files/bin/config_generate

# Replace the default software source
# sed -i 's#openwrt.proxy.ustclug.org#mirrors.bfsu.edu.cn\\/openwrt#' package/lean/default-settings/files/zzz-default-settings

#sed -i 's/invalid users = root/#invalid users = root/g' feeds/packages/net/samba4/files/smb.conf.template


# 拉取软件包

#git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
#git clone https://github.com/kenzok8/small-package package/small-package
#git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
#svn co https://github.com/kiddin9/openwrt-packages/trunk/UnblockNeteaseMusic-Go package/UnblockNeteaseMusic-Go
#svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-unblockneteasemusic-go package/luci-app-unblockneteasemusic-go


# 修复 v2ray-geodata 依赖问题
#rm -rf feeds/packages/net/v2ray-geodata
#rm -rf package/feeds/packages/v2ray-geodata
#git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata




# 为alist插件更换最新的golang版本
# rm -rf feeds/packages/lang/golang
# svn export https://github.com/sbwml/packages_lang_golang/trunk feeds/packages/lang/golang

# mosdns
#find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
#find ./ | grep Makefile | grep mosdns | xargs rm -f
#git clone https://github.com/sbwml/luci-app-mosdns package/mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/geodata
