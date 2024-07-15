#!/bin/bash
echo "installing esbmc"

# Setting the arguments required to build esbmc
BASE_ARGS="\
    -DDOWNLOAD_DEPENDENCIES=On \
    -GNinja \
    -DENABLE_CSMITH=On \
    -DBUILD_TESTING=On \
    -DENABLE_REGRESSION=On \
    -DENABLE_SOLIDITY_FRONTEND=On \
    -DENABLE_JIMPLE_FRONTEND=On \
    -DCMAKE_INSTALL_PREFIX:PATH=$PWD/release \
    -DENABLE_PYHTON_FRONTEND=On \
"
SOLVER_FLAGS="\
    -DENABLE_BOOLECTOR=On \
    -DENABLE_YICES=Off \
    -DENABLE_BITWUZLA=On \
    -DENABLE_GOTO_CONTRACTOR=On \
    -DACADEMIC_BUILD=Off \
"

CLANG_VERSION=11

PKGS="\
        clang-$CLANG_VERSION clang-tidy-$CLANG_VERSION \
        python-is-python3 csmith python3 \
        git ccache unzip wget curl libcsmith-dev gperf \
        libgmp-dev cmake bison flex g++-multilib linux-libc-dev \
        libboost-all-dev ninja-build python3-setuptools \
        libtinfo-dev pkg-config python3-pip python3-toml \
        openjdk-11-jdk \
"

# Update the package list
apt-get update && apt-get install -y $PKGS
rm -rf /var/lib/apt/lists/*

sudo pip3 install --user meson ast2json &&
pip3 install --user pyparsing toml &&
pip3 install --user pyparsing tomli &&
meson --version &&
#create and enter the build directory
mkdir build && cd build

# run cmake to configure the project
cmake .. $BASE_ARGS $SOLVER_FLAGS &&
cmake --build . && ninja install
