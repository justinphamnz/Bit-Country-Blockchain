#!/usr/bin/env bash

set -e

echo "*** Initializing WASM build environment"

if [ -z $CI_PROJECT_NAME ] ; then
    rustup update nightly
    rustup update nightly-2020-10-06
    rustup update stable
    rustup default nightly-2020-10-06
fi

rustup target add wasm32-unknown-unknown --toolchain nightly
rustup target add wasm32-unknown-unknown --toolchain nightly-2020-10-06
