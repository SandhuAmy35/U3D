#!/usr/bin/env bash
BUILD_CONFIG=Release

mkdir build
cd build

cmake .. -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE=$BUILD_CONFIG \
    -DCMAKE_INSTALL_PREFIX="/usr/local" \
    -DU3D_SHARED:BOOL=OFF

make install
