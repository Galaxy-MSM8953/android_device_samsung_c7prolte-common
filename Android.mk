#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.tuna), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.

LOCAL_PATH := $(call my-dir)

ifneq ($(filter c7proltedd, $(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
AUTHHAT_IMAGES := \
    authhat.b00 authhat.b01 authhat.b02 authhat.b03 authhat.b04 \
    authhat.b05 authhat.b06 authhat.mdt
    
AUTHHAT_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(AUTHHAT_IMAGES)))
$(AUTHHAT_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "AUTHHAT firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(AUTHHAT_SYMLINKS)

AUTHNR_IMAGES := \
    authnr.b00 authnr.b01 authnr.b02 authnr.b03 authnr.b04 \
    authnr.b05 authnr.b06 authnr.mdt
    
AUTHNR_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(AUTHNR_IMAGES)))
$(AUTHNR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "AUTHNR firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(AUTHNR_SYMLINKS)

DUALFP_IMAGES := \
    dualfp.b00 dualfp.b01 dualfp.b02 dualfp.b03 dualfp.b04 \
    dualfp.b05 dualfp.b06 dualfp.mdt
    
DUALFP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(DUALFP_IMAGES)))
$(DUALFP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DUALFP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DUALFP_SYMLINKS)
endif
