#!/bin/bash

echo "cd to $(dirname $(realpath"$0"))"

cd $(dirname $(realpath"$0"))
sudo apt install repo
./dependencies.sh
./download.sh
./build.sh