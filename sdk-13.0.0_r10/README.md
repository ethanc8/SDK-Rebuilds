VERSION='13.0.0_r10'
====================

IMPORTANT
---------
The Android(tm) 13 sdk (api level 33), contrary to previous versions, does NOT include
a system image anymore. 

You will notice a significantly reduced source tree, a smaller output sdk-zip-file 
and will experience a much shorter build time. This is, because the build receipe
does not generate a system image.

This is ok, because you do not really need it (unless you use a VM instead of a 
real device) for development.

But do not worry, you still can build it! But not from the sdk source tree!

Simply follow the instructions here to create a system image:
https://source.android.com/docs/setup/create/gsi#building-gsis

You need to pull a different source tree.

For the most up-to-date Android 13, the branch to use is "android13-gsi".

I have tested building it with the same build environent like for the sdk, and
it works without any issues!


Notes
-----

- simultaneous builds of Windows and linux sdk may fail. Default is linux only. If desired, edit build.sh and change the settings.
- the build.sh differs significantly to previous versions, because building 
conscrypt will run in multiple issues and result in (unrecoverable) errors unless 
some additional modules are built from source.

All commands need to be executed from the sdk folder!

Build receipe
-------------

1) Install dependencies (you will be asked for root password to install packages):

    ./dependencies.sh

2) Download the source code:

    ./download.sh

3) Compile the sdk:

    ./build.sh

When the build finishes sucessfully, you get a list of the important generated sdk files.

Have fun!

Footnote
--------

Microsoft Windows is a trademark of the Microsoft group of companies. Android is a trademark of Google LLC.
