VERSION='12.0.0_r19'
====================

Notes
-----

- patch.sh is necessary to fix outdated syntax in a py script file. Without that, the build will break at the very end.
- simultaneous builds of Windows and linux sdk may fail. Default is linux only. If desired, edit build.sh and change the settings.

All commands need to be executed from the sdk folder!

Build receipe
-------------

Make all the .sh scripts in this directory executable:

    chmod +x *.sh

Install dependencies (you will be asked for root password to install packages):

    ./dependencies.sh

Download the source code:

    ./download.sh

Apply patches to the source tree to make the build work:

    ./patch.sh

Compile the sdk:

    ./build.sh

When the build finishes sucessfully, you get a list of the important generated sdk files.

Have fun!

Footnote
--------

Microsoft Windows is a trademark of the Microsoft group of companies. Android is a trademark of Google LLC.
