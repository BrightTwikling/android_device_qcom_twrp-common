##### TWRP settings
PRODUCT_PACKAGES += \
    sh.recovery \
    awk.recovery \
    fastbootd.recovery

PRODUCT_PACKAGES += \
    bc_recovery \
    e2fsck.recovery \
    e2fsdroid.recovery \
    mke2fs.recovery \
    tune2fs.recovery \
    resize2fs.recovery

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0.recovery \
    ld-android.recovery \
    libandroid_runtime_lazy.recovery \
    libc.recovery \
    libdl.recovery \
    libm.recovery \
    libfs_mgr.recovery \
    libfscrypt.recovery \
    libgsi.recovery \
    libkeyutils.recovery \
    liblogwrap.recovery \
    liblp.recovery \
    libprocessgroup.recovery \
    libprocessgroup_setup.recovery \
    libcap.recovery \
    libminijail.recovery \
    libunwindstack.recovery \
    libmdnssd.recovery \

PRODUCT_PACKAGES += \
    android.hardware.boot@1.0.recovery \
    android.hardware.boot@1.1.recovery \
    android.hardware.boot@1.2.recovery \
    libapexsupport.recovery \
    libasyncio.recovery \
    libinit \
    libdl_android.recovery \
    libprotobuf-cpp-lite.recovery \
    libbinder.recovery \
    libbinder_ndk.recovery \
    libchrome.recovery \
    libevent.recovery \
    libperfetto_c.recovery \
    keystore.recovery \
    keystore_auth.recovery \
    keystore_cli_v2.recovery \
    hwservicemanager.recovery \
    vold_prepare_subdirs.recovery \
    vndservicemanager.recovery \
    toybox.recovery \
    hw/android.hardware.health@2.0-service.recovery \
    hw/android.hardware.health@2.1-service.recovery \
    charger.recovery \
    ueventd.recovery \
    watchdogd.recovery \
    minadbd.recovery

PRODUCT_PACKAGES += \
    libcutils.recovery \
    libusbhost.recovery \
    libutils.recovery \
    libext2_com_err.recovery \
    libext2_e2p.recovery \
    libext2fs.recovery \
    libext2_profile.recovery \
    libext2_uuid.recovery \
    libext2_misc.recovery \
    libext2_quota.recovery \
    libext2fs.recovery \
    libext2_blkid.recovery \
    libpng.recovery \
    liblog.recovery \
    libstdc++.recovery \
    libtwrpminui.recovery \
    libminadbd.recovery \
    libz.recovery \
    libtwrpdigest.recovery \
    libblkid.recovery \
    libfusesideload.recovery \
    libbootloader_message.recovery

PRODUCT_PACKAGES += \
    libcrypto.recovery \
    libcrypto_utils.recovery \
    libbacktrace.recovery \
    libunwind.recovery \
    libbase.recovery \
    libc++.recovery \
    libnetd_client.recovery \
    toolbox.recovery \
    twrp.recovery \
    libtwrpmtp-ffs.recovery \
    libext4_utils.recovery

ifeq ($(call twrp_scalar,$(TW_INCLUDE_JPEG)),true)
PRODUCT_PACKAGES += \
    libjpeg.recovery
endif
PRODUCT_PACKAGES += \
    libselinux.recovery \
    libhardware.recovery

########################################################################
ifeq ($(call twrp_scalar,$(TW_INCLUDE_CRYPTO)), true)
PRODUCT_PACKAGES += \
    libcryptfsfde.recovery \
    libdexfile_support.recovery \
    libf2fs_sparseblock.recovery \
    android.hardware.authsecret@1.0.recovery \
    android.hardware.oemlock@1.0.recovery \
    libnos_transport.recovery \
    libnos_datagram.recovery \
    android.hardware.keymaster@3.0.recovery
# FBE files
ifeq ($(call twrp_scalar,$(TW_INCLUDE_CRYPTO_FBE)), true)
PRODUCT_PACKAGES += \
    libtwrpfscrypt.recovery \
    android.security.maintenance-ndk.recovery \
    android.system.keystore2-V3-ndk.recovery \
    android.system.keystore2-V4-ndk.recovery \
    android.system.keystore2-V5-ndk.recovery \
    android.security.apc-ndk.recovery \
    android.security.authorization-ndk.recovery \
    libkeymint_support.recovery \
    android.hardware.confirmationui-V1-ndk.recovery \
    android.hardware.security.keymint-V3-ndk.recovery \
    android.hardware.security.keymint-V4-ndk.recovery \
    android.frameworks.stats-V1-ndk.recovery \
    android.hardware.security.secureclock-V1-ndk.recovery \
    libgatekeeper.recovery \
    libgatekeeper_aidl.recovery \
    libkeymaster_messages.recovery \
    libbinder.recovery \
    libprotobuf-cpp-lite.recovery \
    libsoftkeymasterdevice.recovery \
    android.hardware.gatekeeper-V1-ndk.recovery \
    android.hardware.gatekeeper@1.0.recovery \
    libkeystore2_aaid.recovery \
    libkeystore2_apc_compat.recovery \
    libkeystore2_crypto.recovery \
    libkm_compat_service.recovery \
    libkeystore2_vintf_cpp.recovery \
    android.security.compat-ndk.recovery \
    libkm_compat.recovery \
    libkeymint.recovery \
    lib_android_keymaster_keymint_utils.recovery \
    libcppbor_external.recovery \
    libcppbor.recovery \
    libpuresoftkeymasterdevice.recovery \
    libcppcose_rkp.recovery \
    android.hardware.security.rkp-V3-ndk.recovery \
    android.hardware.security.sharedsecret-V1-ndk.recovery \
    avbctl.recovery \
    keystore.recovery \
    keystore2.recovery \
    keystore_cli.recovery \
    android.system.wifi.keystore@1.0.recovery \
    libstatslog.recovery \
    libsoft_attestation_cert.recovery \
    libdiskconfig.recovery \
    libhardware_legacy.recovery \
    libaconfig_storage_read_api_cc.recovery \
    server_configurable_flags.recovery \
    libincfs.recovery \
    android.hardware.health.storage@1.0.recovery \
    android.hardware.health.storage@1.0.recovery \
    android.hardware.health.storage-V1-ndk.recovery \
    libhardware_legacy.recovery \
    android.system.suspend@1.0.recovery \
    android.system.suspend-V1-ndk.recovery \
    fscryptpolicyget.recovery

ifeq ($(call twrp_scalar,$(TW_INCLUDE_ZSTD)), true)
PRODUCT_PACKAGES += zstd.recovery
endif

ifneq ($(call twrp_scalar,$(TW_EXCLUDE_LIBXML2)), true)
PRODUCT_PACKAGES += libxml2.recovery
endif

ifneq ($(wildcard system/keymaster/keymaster_stl.cpp),)
PRODUCT_PACKAGES += \
    libkeymaster_portable.recovery \
    libkeymaster_staging.recovery
endif

PRODUCT_PACKAGES += \
    libwifikeystorehal.recovery \
    android.hardware.weaver.recovery \
    android.hardware.confirmationui.recovery

PRODUCT_PACKAGES += \
   libsoftkeymaster.recovery \
   android.hardware.keymaster@4.0.recovery \
   android.hardware.keymaster@4.1.recovery \
   libkeymaster4support.recovery \
   libkeymaster4_1support.recovery \
   libutilscallstack.recovery \
   libdexfile.recovery \
   libservices.recovery \
   libkeymaster_portable.recovery \
   libhwbinder.recovery \
   android.security.aaid_aidl-cpp.recovery \
   libkeystore-attestation-application-id.recovery
endif
endif
########################################################################
# Partition operate
ifeq ($(call twrp_scalar,$(PRODUCT_USE_DYNAMIC_PARTITIONS)),true)
ifeq ($(call twrp_scalar,$(TW_ENABLE_ALL_PARTITION_TOOLS)),true)
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_LPTOOLS := true
PRODUCT_PACKAGES += \
    lpmake.recovery \
    lpadd.recovery \
    lpflash.recovery \
    lpunpack.recovery
endif
ifneq ($(TW_INCLUDE_LPDUMP),)
PRODUCT_PACKAGES += \
    bootctl.recovery \
    lpdump.recovery \
    lpdumpd.recovery \
    liblpdump.recovery \
    liblpdump_interface-V1-cpp.recovery \
    libprotobuf-cpp-full.recovery \
    liblpdump_interface-cpp.recovery
endif
ifneq ($(TW_INCLUDE_LPTOOLS),)
PRODUCT_PACKAGES += lptools.recovery
endif
endif
########################################################################

ifneq ($(wildcard system/core/reboot/Android.*),)
PRODUCT_PACKAGES += reboot.recovery
endif
ifneq ($(call twrp_scalar,$(TW_DISABLE_TTF)), true)
PRODUCT_PACKAGES += libft2.recovery
endif
ifneq ($(wildcard external/pcre/Android.mk),)
PRODUCT_PACKAGES += libpcre.recovery
endif
ifeq ($(call twrp_scalar,$(TW_INCLUDE_NTFS_3G)),true)
PRODUCT_PACKAGES += \
    mount.ntfs.recovery \
    fsck.ntfs.recovery \
    mkfs.ntfs.recovery \
    libntfs-3g.recovery \
    libfuse-lite.recovery
else
PRODUCT_PACKAGES += \
    ntfs-3g.recovery \
    ntfsfix.recovery \
    mkntfs.recovery
endif
ifneq ($(call twrp_scalar,$(BOARD_HAS_NO_REAL_SDCARD)),true)
PRODUCT_PACKAGES += sgdisk.recovery
endif
ifneq ($(filter-out "",$(strip $(TW_OZIP_DECRYPT_KEY))),)
PRODUCT_PACKAGES += ozip_decrypt.recovery
endif

# Logcat 
ifeq ($(call twrp_scalar,$(TWRP_INCLUDE_LOGCAT)), true)
PRODUCT_PACKAGES += logcat.recovery
ifeq ($(call twrp_scalar,$(TARGET_USES_LOGD)), true)
PRODUCT_PACKAGES += \
    logd.recovery \
    libsysutils.recovery \
    libnl.recovery
endif
PRODUCT_PACKAGES += \
    libpcrecpp.recovery \
    liblogcat.recovery
endif

PRODUCT_PACKAGES += \
    libvndksupport.recovery \
    libhidlbase.recovery \
    libhidltransport.recovery \
    android.frameworks.stats@1.0.recovery \
    libziparchive.recovery \
    libext2_blkid.recovery \
    libext2_quota.recovery \
    libhidl-gen-utils.recovery \
    libtinyxml2.recovery \
    android.hidl.token@1.0.recovery \
    android.hardware.vibrator@1.0.recovery \
    android.hardware.vibrator@1.1.recovery \
    android.hardware.vibrator@1.2.recovery \
    android.hardware.vibrator-V1-ndk.recovery \
    android.hardware.vibrator-V1-cpp.recovery \
    android.hardware.vibrator-V2-cpp.recovery \
    android.hardware.vibrator-V2-ndk.recovery \
    android.hardware.health-V3-ndk.recovery \
    android.hardware.health-translate-ndk.recovery

ifneq ($(wildcard system/core/libkeyutils/Android.bp),)
PRODUCT_PACKAGES +=libkeyutils.recovery
endif

ifeq ($(TARGET_ARCH), arm64)
PRODUCT_PACKAGES +=libclang_rt.ubsan_standalone-aarch64-android.recovery
endif

PRODUCT_PACKAGES += \
    liblogwrap.recovery \
    libext2_misc.recovery

ifneq ($(call twrp_scalar,$(TW_EXCLUDE_BASH)), true)
PRODUCT_PACKAGES += \
    bash.recovery \
    libncurses.recovery
endif

ifeq ($(call twrp_scalar,$(TW_USE_TOOLBOX)), true)
   include $(CLEAR_VARS)
   LOCAL_MODULE := mkshrc_twrp
   LOCAL_MODULE_STEM := mkshrc
   LOCAL_MODULE_TAGS := optional
   LOCAL_MODULE_CLASS := ETC
   LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/etc
   LOCAL_SRC_FILES := $(LOCAL_MODULE)
   include $(BUILD_PREBUILT)
endif

ifeq ($(call twrp_scalar,$(TW_INCLUDE_7ZA)), true)
    include $(CLEAR_VARS)
    LOCAL_MODULE := 7za
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_CLASS := EXECUTABLES
    LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
    LOCAL_SRC_FILES := $(LOCAL_MODULE)
    include $(BUILD_PREBUILT)
endif

ifneq (,$(filter true,$(call twrp_scalar,$(TW_INCLUDE_REPACKTOOLS)) $(call twrp_scalar,$(TW_INCLUDE_RESETPROP)) $(call twrp_scalar,$(TW_INCLUDE_LIBRESETPROP))))
    ifeq ($(wildcard external/magisk-prebuilt/prebuilt/Android.bp),)
        $(warning Magisk prebuilt tools not found!)
        $(warning Please place https://github.com/TeamWin/external_magisk-prebuilt)
        $(warning into external/magisk-prebuilt)
        $(error magiskboot prebuilts not present; exiting)
    endif
endif

ifneq ($(call twrp_scalar,$(TW_EXCLUDE_BASH)), true)
PRODUCT_PACKAGES += \
    bash_twrp
endif
