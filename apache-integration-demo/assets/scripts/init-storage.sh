#!/bin/bash
set -ex

STORAGE_DIR=${STORAGE_DIR:-/storage}

mkdir -p ${STORAGE_DIR}/web

cp -r /web/* ${STORAGE_DIR}/web
chmod +x /web/shared/index.html /web/ibergrid/index.html /web/shared-oauth/index.json /web/ibergrid-oauth/index.json

chown -R apache:apache ${STORAGE_DIR}
