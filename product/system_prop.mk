# FingerPrint Sensors
PRODUCT_PROPERTY_OVERRIDES += \
        persist.qfp=false

# Radio
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.add_power_save=1

# Screen
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=386

# Volume
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.vc_call_vol_steps=15 \
	ro.config.media_vol_steps=20

# Strict Mode
ifeq ($(TARGET_BUILD_VARIANT),eng)
	PRODUCT_PROPERTY_OVERRIDES += \
		persist.sys.strictmode.disable=true
endif
