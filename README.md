# SDK-Rebuilds

Rebuild Android(tm) SDK from source
===================================

- You can build all SDKs up to Android 10 (api level 29) from the build scripts found [here](https://gitlab.com/android-rebuilds/auto). For Android 12 (api 31), 12L (api 32) and 13 (api 33) you can use the build scripts from this repository. For Android 11 (api 30), the build-receipe should be very similiar (if not identical) to Android 12 (api 31), but this was not tested.

- For the sake of simplicity, the build recipes here *do **not** use docker*. 

- All scripts have been written from scratch and support a build-chain on a modern, up-to-date OS (Ubuntu 22.04.1 LTS and Linux Mint 21).

- If you do not want to mess up your main production machine, use a VM. 

- This repository includes the build receipes in the corresponding folders.

- The build scripts have been tested on Ubuntu 22.04.1 LTS and Linux Mint 21.

- The sdk for Windows was **not** tested for all versions/revisions, but only for some of them, but it *should* work.

Notice for Android 13
---------------------

The receipe for Android 13 (api 33) builds the sdk but does NOT build a system image; but don't worry and read the Readme.md inside that folder for how to build a system image for Android 13.


Prerequisites
=============

You need approx. 300 MB of free disk space (100 MB for the source of each sdk version, and an other 200 MB for the build process and the output). 

I monitored the builds and they used up to 26 GB of RAM. Therefore, I recommend at least 32 GB of RAM. Lower specs might work, but are untested. It is commonly asserted that sdk builds fail when you have less than 16 GB of free RAM.

You should build on a (virtual) machine running either Ubuntu 22.04.1 LTS or Linux Mint 21. 

You have to download approx. 100 GB of source code, and the 1st build usually take a couple of hours, depending on your machine. So take your time and consider to grab a coffee in the meantime.

How to build
============

Install git:

    sudo apt update
    sudo apt install git

Install repo tool:

    sudo apt install repo

Should your distro not have it, you can get the repo tool from [here](https://android.googlesource.com/tools/repo). It is a single script file, so no compiling is necessary. It needs the python-is-python3 symlink package installed to work, *or* a manually set symlink from 'python' to 'python3'.

Clone **this** repository locally:

    git clone https://codeberg.org/Starfish/Android-SDK-Rebuilds

cd into the local copy and desired sdk folder and follow the instructions in the README.md file there.

Before building, please carefully read the README.md in the corresponding folder first!

Last words
==========

I am an app dev, not a package builder. The time I am willing to spend on rebuilding the sdk is limited. I am lucky when I get the sdk compiled, and that is also the point when I stop any investigations. Take care!

Footnote
========

Microsoft Windows is a trademark of the Microsoft group of companies. Android is a trademark of Google LLC.

