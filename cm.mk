$(call inherit-product, device/htc/vigor/vigor.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_vigor
PRODUCT_DEVICE := vigor
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor BUILD_ID=IML74K BUILD_FINGERPRINT="sprint/htc_shooter/shooter:4.0.3/IML74K/130920.2:user/release-keys" PRIVATE_BUILD_DESC="2.08.651.2 CL130920 release-keys"
TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Release name and versioning
PRODUCT_RELEASE_NAME := Vigor
-include vendor/cm/config/common_versions.mk