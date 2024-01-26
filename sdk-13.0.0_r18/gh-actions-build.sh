#!/bin/bash

cd $(dirname $(realpath"$0"))
sudo apt install repo
./dependencies.sh
./download.sh
./build.sh