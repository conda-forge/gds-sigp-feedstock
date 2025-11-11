#!/bin/sh
set -e -x
echo %PREFIX%
mkdir build
cd build

cmake ${CMAKE_ARGS} \
      -DCMAKE_BUILD_TYPE=Release \
      ${SRC_DIR}

cmake --build . -j 8 --config Release --target install
ctest --output-on-failure
