# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2024 OpenWrt.org

define Device/keenetic_kn-3410
  $(Device/dsa-migration)
  $(Device/uimage-lzma-loader)
  BLOCKSIZE := 64k
  IMAGE_SIZE := 31488k
  DEVICE_VENDOR := Keenetic
  DEVICE_MODEL := KN-3410
  DEVICE_DTS := mt7621_keenetic_kn-3410
  DEVICE_PACKAGES := kmod-mt7603 kmod-mt7615e
  IMAGES += factory.bin
  IMAGE/factory.bin := $$(sysupgrade_bin) | pad-to $$$$(BLOCKSIZE) | \
	check-size | zyimage -d 8400912 -v "KN-3410"
endef
TARGET_DEVICES += keenetic_kn-3410
