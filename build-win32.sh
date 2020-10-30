#!/usr/bin/env bash

set -e

VASM_SRC_URL="http://sun.hasenbraten.de/vasm/release/vasm.tar.gz"
VLINK_SRC_URL="http://sun.hasenbraten.de/vlink/release/vlink.tar.gz"

fetch()
{
    curl -O ${1}
    tar xvf ${1##*/}
}


build_vasm()
{
    pushd vasm
    rm -rf obj
    mkdir -p obj
    make CPU=${1} SYNTAX=${2} -f ../Makefile.vasmWin32
    cp vasm${1}_${2}.exe ../
    popd
}

build_vlink()
{
    pushd vlink
    rm -rf objects
    make -f ../Makefile.vlinkWin32
    cp vlink.exe ../
    popd
}

fetch $VASM_SRC_URL
fetch $VLINK_SRC_URL

build_vasm m68k std
build_vasm ppc std
build_vlink
