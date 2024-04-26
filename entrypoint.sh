#!/bin/sh

echo "[INFO] Configure Git Settings"
git config --global user.name $INPUT_MANIFEST_USER
git config --global user.email $INPUT_MANIFEST_EMAIL
git config --global --add safe.directory /github/workspace

# Create a temporary file
key_file=$(mktemp)
echo "$INPUT_MANIFEST_DEPLOY_TOKEN" > "$key_file"

# Set the permissions for the key file to be read-only by the owner
chmod 600 "$key_file"

# Set GIT_SSH_COMMAND to use the temporary file
export GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i $key_file"

echo "[INFO] List manifest directory"

ls -laH

echo "[INFO] DeployKit deploy using Kustomize"

deploykit deploy kustomize
