# SPDX-License-Identifier: GPL-2.0-only

define Device/keenetic_kn-3410
  DEVICE_VENDOR := Keenetic
  DEVICE_MODEL := KN-3410
  DEVICE_DTS := mt7621_keenetic_kn-3410
  DEVICE_PACKAGES := kmod-mt7603 kmod-mt7615e kmod-mt7663-firmware-ap luci
  IMAGE_SIZE := 30720k
  IMAGES += sysupgrade.bin
  IMAGE/sysupgrade.bin := append-rootfs | sysupgrade-tar | append-metadata
endef

TARGET_DEVICES += keenetic_kn-3410
