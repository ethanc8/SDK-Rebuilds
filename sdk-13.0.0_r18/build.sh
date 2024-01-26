#!/bin/bash

# Caution: VERSION needs to be identical in all scripts in this directory, 
# otherwise the build will not work.

VERSION='13.0.0_r18'
BUILD_VARIANT='eng'
export USER=$(whoami)
export BUILD_NUMBER="${BUILD_VARIANT}.${VERSION}"
# needed, because otherwise conscrypt build will fail. ART and some other 
# dependencies need to be built from source. 
export ART_MODULE_BUILD_FROM_SOURCE=true
export MODULE_BUILD_FROM_SOURCE=true

. build/envsetup.sh
lunch sdk-${BUILD_VARIANT}
make -j$(nproc) sdk dist sdk_repo
# make -j$(nproc) win_sdk dist sdk_repo

# list the result files
# ---------------------
#
# optional, the windows sdk, disabled by default (see above)
# ls -lah /out/dist/android-sdk_${BUILD_NUMBER}_windows.zip

# the sdk

ls -lah out/dist/android-sdk_${BUILD_NUMBER}_linux-x86.zip

# the parts of the sdk

ls -lah out/dist/sdk-repo*.zip
ls -lah out/dist/sdk-symbols-${BUILD_NUMBER}.zip
ls -lah out/dist/repo*.xml

