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

PRODUCT_BRAND := generic
PRODUCT_DEVICE := generic
PRODUCT_NAME := core_amlogic

USE_OPENGL_RENDERER := true

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg

PRODUCT_PACKAGES := \
    ApplicationsProvider \
    BackupRestoreConfirmation \
    Browser \
    Bugreport \
    Contacts \
    ContactsProvider \
    DefaultContainerService \
    DownloadProvider \
    DownloadProviderUi \
    HTMLViewer \
    Home \
    KeyChain \
    MediaProvider \
    PackageInstaller \
    PicoTts \
    SettingsProvider \
    SharedStorageBackup \
    TelephonyProvider \
    TtsService \
    UserDictionaryProvider \
    VpnDialogs \
    apache-xml \
    bluetooth-health \
    bouncycastle \
    bu \
    cacerts \
    com.android.location.provider \
    com.android.location.provider.xml \
    core \
    core-junit \
    dalvikvm \
    dexdeps \
    dexdump \
    dexlist \
    dexopt \
    dmtracedump \
    dx \
    ext \
    filterfw \
    framework-res \
    hostapd \
    hprof-conv \
    icu.dat \
    installd \
    ip \
    ip-up-vpn \
    ip6tables \
    iptables \
    libOpenMAXAL \
    libOpenSLES \
    libaudiopreprocessing \
    libcrypto \
    libdex \
    libdvm \
    libexpat \
    libfilterfw \
    libfilterpack_imageproc \
    libgabi++ \
    libicui18n \
    libicuuc \
    libjavacore \
    libnativehelper \
    libnfc_ndef \
    libpowermanager \
    libspeexresampler \
    libsqlite_jni \
    libssl \
    libstagefright_soft_h264dec \
    libstagefright_soft_aacdec \
    libstagefright_soft_amrdec \
    libstagefright_soft_g711dec \
    libstagefright_soft_mp3dec \
    libstagefright_soft_mpeg4dec \
    libstagefright_soft_vorbisdec \
    libstagefright_soft_vpxdec \
    libvariablespeed \
    libwebrtc_audio_preprocessing \
    libwilhelm \
    libz \
    screencap \
    sensorservice

# host-only dependencies
ifeq ($(WITH_HOST_DALVIK),true)
    PRODUCT_PACKAGES += \
        apache-xml-hostdex \
        bouncycastle-hostdex \
        core-hostdex \
        libjavacore-host \
        dalvik
endif

ifeq ($(WITH_LMBENCH),true)
PRODUCT_PACKAGES += \
    bw_file_rd bw_mem bw_mmap_rd bw_pipe bw_tcp bw_udp  \
    bw_unix                                             \
    cache disk enough hello                             \
    lat_connect lat_ctx lat_fcntl lat_fifo lat_fs       \
    lat_mem_rd lat_mmap lat_ops lat_pagefault lat_pipe  \
    lat_proc lat_select lat_sig lat_syscall             \
    lat_tcp lat_udp lat_unix lat_unix_connect           \
    lat_usleep lat_pmake                                \
    line lmdd lmhttp par_mem par_ops loop_o memsize     \
    mhz msleep rhttp timing_o tlb stream                \
    lmbench-config lmbench-results lmbench
endif

