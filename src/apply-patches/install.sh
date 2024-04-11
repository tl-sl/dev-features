#!/bin/bash

set -e

EMAIL="${DEVCONTAINER_FEATURE_OPTIONS_GITEMAIL:-user@example.com}"
NAME="${DEVCONTAINER_FEATURE_OPTIONS_GITNAME:-anon user}"
PATCHES_DIR="${DEVCONTAINER_FEATURE_OPTIONS_PATCHESDIRECTORY:-/workspaces/*/sdk_patches}"
SDK_DIR="${DEVCONTAINER_FEATURE_OPTIONS_SDKDIRECTORY:-/opt/ti/ot-ti}"

git config --global user.email \"${EMAIL}\"
git config --global user.name \"${NAME}\"

echo "Applying patches from ${PATCHES_DIR}"
cd ${SDK_DIR}
git am --ignore-whitespace ${PATCHES_DIR}/*.patch

echo "Patches applied successfully!"
