if git --version &>/dev/null; then
    cat > ./src/version.h <<EOF
// This file will be auto generated during building, and should not be modified manually
#define BUILD_TAG "$(git describe --always --match \"tag\" --dirty)"
EOF
fi
