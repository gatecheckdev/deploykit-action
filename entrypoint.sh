#!/bin/sh

# git config --global user.name $DK_MANIFEST_USER
# git config --global user.email $DK_MANIFEST_EMAIL
git config --global --add safe.directory /github/workspace

echo "[INFO] List manifest directory"

ls -laH

echo "[INFO] DeployKit deploy using Kustomize"

deploykit deploy kustomize
