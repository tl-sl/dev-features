#!/bin/bash

set -e

PATCHES_DIR="${DEVCONTAINER_FEATURE_OPTIONS_PATCHESDIRECTORY:-/workspaces/*/sdk_patches}"
SDK_DIR="${DEVCONTAINER_FEATURE_OPTIONS_SDKDIRECTORY:-/opt/ti/ot-ti}"
echo "Applying patches from ${PATCHES_DIR}"
cd ${SDK_DIR}
git am --ignore-whitespace ${PATCHES_DIR}/*.patch

echo "Patches applied successfully!"
