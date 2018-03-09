# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd \
    fingerprint.msm8953

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml
