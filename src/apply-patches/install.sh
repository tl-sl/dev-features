#!/bin/bash

set -e

echo "email: ${GITEMAIL}"

EMAIL="${GITEMAIL:-user@example.com}"
NAME="${GITNAME:-anon user}"
PATCHES_DIR="${PATCHESDIRECTORY:-/opt/sdk_patches}"
SDK_DIR="${SDKDIRECTORY:-/opt/ti/ot-ti}"
XOSC="${XOSCTUNING:-0xC1}"

git config --global user.email \"${EMAIL}\"
git config --global user.name \"${NAME}\"

echo "Applying patches from ${PATCHES_DIR}"
cd ${SDK_DIR}
git am --ignore-whitespace ${PATCHES_DIR}/*.patch

echo "Setting Xosc Tuning to ${Xosc}"
sed -Ei "s/xoscCapArrayDelta\s*=.*;/xoscCapArrayDelta = ${XOSC};/" src/openthread.syscfg

echo "Patches applied successfully!"
