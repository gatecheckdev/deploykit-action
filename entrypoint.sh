#!/bin/sh

# git config --global user.name $DK_MANIFEST_USER
# git config --global user.email $DK_MANIFEST_EMAIL

ls -laH

deploykit deploy kustomize \
    --attempts $INPUTS_ATTEMPTS \
    --backoff-method $INPUTS_BACKOFF_METHOD \
    --directory . \
    --image $INPUTS_IMAGE \
    --message $INPUTS_MESSAGE \
    --repository $INPUTS_REPOSITORY \
    --directory $INPUTS_DIRECTORY \
    --service $INPUTS_SERVICE \
    --service-directory $INPUTS_SERVICE_DIRECTORY
