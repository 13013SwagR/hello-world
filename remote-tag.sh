#!/bin/bash
REGISTRY_NAME="https://ghcr.io"
# REPOSITORY=${{ github.actor }}/hello-world
REPOSITORY=13013swagr/hello-world
TAG_OLD=heelo-world-0d7d9f2-20220603t132745
TAG_NEW=test
CONTENT_TYPE="application/vnd.docker.distribution.manifest.v2+json"
MANIFEST=$(curl -H "Accept: ${CONTENT_TYPE}" -H "Authorization: Bearer Z2hwX0p0ZlZ4VUNzUFdLZ2l4ZFV6NUo3d0ZDRmRGc3pNejFBY3BMNwo=" "$REGISTRY_NAME/v2/$REPOSITORY/manifests/$TAG_OLD")
curl -f -X PUT -H "Content-Type: ${CONTENT_TYPE}" -H "Authorization: Bearer Z2hwX0p0ZlZ4VUNzUFdLZ2l4ZFV6NUo3d0ZDRmRGc3pNejFBY3BMNwo=" -d "$MANIFEST" "$REGISTRY_NAME/v2/$REPOSITORY/manifests/$TAG_NEW"
