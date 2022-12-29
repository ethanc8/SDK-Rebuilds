#!/bin/bash

# need to patch a py script using outdated syntax not compatible with python3

if [ ! -f "development/build/tools/mk_sources_zip.py.bak" ]; then
    cp development/build/tools/mk_sources_zip.py development/build/tools/mk_sources_zip.py.bak
fi

sed -i '77 s/"""/    print/' development/build/tools/mk_sources_zip.py
sed -i '94 s/except /except (/' development/build/tools/mk_sources_zip.py
sed -i '94 s/:/):/' development/build/tools/mk_sources_zip.py

sed -i '250 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '251 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '252 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '253 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '254 c\# removed' development/build/tools/mk_sources_zip.py

sed -i '62 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '63 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '64 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '65 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '66 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '67 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '68 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '69 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '70 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '71 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '72 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '73 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '74 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '75 c\# removed' development/build/tools/mk_sources_zip.py
sed -i '76 c\# removed' development/build/tools/mk_sources_zip.py


