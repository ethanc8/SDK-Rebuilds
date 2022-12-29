#!/bin/bash

# Caution: VERSION needs to be identical in all scripts in this directory, 
# otherwise the build will not work.
VERSION='12.0.0_r19'
BUILD_VARIANT='eng'
export USER=$(whoami)
export BUILD_NUMBER="${BUILD_VARIANT}.${VERSION}"
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

