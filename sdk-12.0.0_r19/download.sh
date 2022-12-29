#!/bin/bash

# You can go to https://android.googlesource.com/platform/manifest/+refs and
# to check for the latest version/revision.
#
# Usually, different revisions (e.g._r19) work more or less out of the box
# without the need to change the build skripts. 
#
# Caution: VERSION needs to be identical in all scripts in this directory, 
# otherwise the build will not work.

VERSION='12.0.0_r19'
repo init -u https://android.googlesource.com/platform/manifest -b android-$VERSION --depth=1
repo sync --current-branch -j4
