#!/bin/bash
clang_format=`which clang-format`
echo ${clang_format}
current_path=`pwd`
if [ -d build ]; then
  @echo "Cleaning up cmake"
  @rm -fr build
  @mkdir -p build
  cd build
  cmake ..
  make
  cd $current_path
fi
