#!/bin/bash

set -e

echo "email: ${GITEMAIL}"

EMAIL="${GITEMAIL:-user@example.com}"
NAME="${GITNAME:-anon user}"
PATCHES_DIR="${PATCHESDIRECTORY:-/opt/sdk_patches}"
SDK_DIR="${SDKDIRECTORY:-/opt/ti/ot-ti}"
XOSC="${XOSCTUNING:-0xC1}"

git config --global user.email "${EMAIL}"
git config --global user.name "${NAME}"


cd ${SDK_DIR}
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "Initializing git repository in ${SDK_DIR}..."
    git init
    git add .
    git commit -m "Initial commit"
fi

echo "Applying patches from ${PATCHES_DIR}"
git am --ignore-whitespace ${PATCHES_DIR}/*.patch
make


echo "Patches applied successfully!"
