#!/bin/bash

# Installs necessary packages. Some of them might be obsolete for new builds.
#

# Notes:
# - the master branch of AOSP comes with a brebuilt version of OpenJDK, so
#   no need to install it with apt.
#
# Notes about the repo tool:
#
# - The repo tool is available from debian repos. Although you may get warned
#   that a new version of repo is available when starting sync later, this 
#   usually can be safely ignored.
# 
# - should you really need the latest repo version of if your distro does
#   not have it, you can get the repo tool from here:
#   https://android.googlesource.com/tools/repo
#   It is a single script filem, no compiling is necessary. 
#
# - repo needs the python-is-python3 symlink package installed to work or a
#   manual symlink that 'python' is 'python3'. Without it, repo will not
#   work!

sudo apt install git gnupg flex bison gperf build-essential zip curl \
zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 libncurses5-dev \
libncurses5 libx11-dev lib32z1-dev libgl1-mesa-dev \
libxml2-utils xsltproc unzip rsync python3 python-is-python3 tofrodos repo
