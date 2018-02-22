# Audio Mixer Path
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_path.xml:system/etc/mixer_path.xml

# Audio TFA-AMP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/Tfa9897.cnt:system/etc/Tfa9897.cnt \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml

PRODUCT_PACKAGES += \
    audio_amplifier.msm8953
