# Inherit device configuration for N70.
$(call inherit-product, device/amlogic/w22pro/full_w22.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_w22pro
PRODUCT_BRAND := Ramos
PRODUCT_DEVICE := w22pro
PRODUCT_MODEL := w22pro
PRODUCT_MANUFACTURER := Ramos
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=W22PRO TARGET_DEVICE=W22PRO BUILD_FINGERPRINT=Ramos/W22PRO/W22PRO:4.1.2/JZO54K/485486:user/release-keys PRIVATE_BUILD_DESC="W22PRO-user 4.1.2 JZO54K 485486 release-keys"
