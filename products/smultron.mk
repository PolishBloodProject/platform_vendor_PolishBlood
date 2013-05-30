# Inherit AOSP device configuration for smultron
$(call inherit-product-if-exists, device/semc/smultron/full_smultron.mk)

# Inherit common device configuration for PolishBlood Project 
$(call inherit-product, vendor/PolishBlood/common_PolishBlood.mk)

# Add all AOSP ringtones(disable for more space on /system)
$(call inherit-product, frameworks/base/data/sounds/AllAudio.mk)

# Setup device specific product configuration.
PRODUCT_NAME := PolishBlood_smultron
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := smultron
PRODUCT_MODEL := Xperia Mini
PRODUCT_MANUFACTURER := SEMC

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST15i BUILD_FINGERPRINT="SEMC/ST15i_1254-2184/ST15i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="ST15i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"

PRODUCT_PACKAGES += \
    Mms \
