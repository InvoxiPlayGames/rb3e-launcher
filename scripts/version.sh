#!/bin/bash
if git --version &>/dev/null; then
    [[ ! -z ${CI} ]] && git config --global --add safe.directory /__w/rb3e-launcher/rb3e-launcher
    cat > ./src/version.h <<EOF
// This file will be auto generated during building, and should not be modified manually
#define BUILD_TAG "$(git describe --always --match \"tag\" --dirty)"
EOF
fi
