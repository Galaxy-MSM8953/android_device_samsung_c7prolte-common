# Audio Mixer Path
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
	$(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt

# Audio TFA-AMP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/Tfa9897.cnt:system/etc/Tfa9897.cnt \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml

PRODUCT_PACKAGES += \
    audio_amplifier.msm8953 \
    libtfa98xx
