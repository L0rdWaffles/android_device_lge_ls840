## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := LS840

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/ls840/device_ls840.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ls840
PRODUCT_NAME := cm_ls840
PRODUCT_BRAND := LGE
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := LS840

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LS840 TARGET_DEVICE=LS840 BUILD_FINGERPRINT="sprint_lge/cayman_sprint_us/cayman:4.0.4/ZVI.IMM76D/LS840ZVI.4820d7b4:user/release-keys"  PRIVATE_BUILD_DESC="cayman_sprint_us-user 4.0.4 IMM76D LS840ZVI release-keys"
