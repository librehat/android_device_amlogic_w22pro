#
# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This is a generic Amlogic product
# It includes the base Android platform.

PRODUCT_PACKAGES := \
    DeskClock \
    AlarmProvider \
    Calculator \
    CertInstaller \
    DrmProvider \
    Gallery2 \
    LatinIME \
    Launcher2 \
    Music \
    MusicFX \
    Settings \
    SystemUI \
    Updater

# Live Wallpapers
PRODUCT_PACKAGES += \
    libRS \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    NoiseField \
    HoloSpiralWallpaper \
    PhaseBeam

PRODUCT_PACKAGES += \
    icu.dat
PRODUCT_PACKAGES += \
    librs_jni \
    libvideoeditor_jni \
    libvideoeditorplayer \
    libvideoeditor_core
PRODUCT_PACKAGES += \
    busybox \
    utility_busybox \
    ntfs-3g \
    fsck.exfat mount.exfat

# Mali GPU OpenGL libraries
PRODUCT_PACKAGES += \
    libEGL_mali.so \
    libGLESv1_CM_mali.so \
    libGLESv2_mali.so \
    libGLESv2_mali.so \
    libMali.so \
    libUMP.so \
    mali.ko \
    ump.ko \
    egl.cfg \
    hwcomposer.amlogic \
    libskia.so

# Player
PRODUCT_PACKAGES += \
    amlogic.subtitle.xml \
    amlogic.libplayer.xml

# ALSA
PRODUCT_PACKAGES += \
    audio_policy.default \
    audio.primary.amlogic \
    alsa.default \
    acoustics.default \
    libasound \
    alsa_aplay \
    alsa_ctl \
    alsa_amixer \
    alsainit-00main \
    alsalib-alsaconf alsalib-pcmdefaultconf alsalib-cardsaliasesconf

# YAFFS2 tools
PRODUCT_PACKAGES += \
    mkyaffsimage2K.dat \
    mkyaffsimage4K.dat

# libemoji for Webkit
PRODUCT_PACKAGES += libemoji
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AllAudio.mk)
$(call inherit-product, external/svox/pico/lang/all_pico_languages.mk)
$(call inherit-product, device/amlogic/common/core_amlogic.mk)

# Overrides
PRODUCT_BRAND := TV
PRODUCT_DEVICE := Android Reference Device
PRODUCT_NAME := Android Reference Design
PRODUCT_CHARACTERISTICS := tv
