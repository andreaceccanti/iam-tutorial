#!/bin/bash
set -e

echo "OIDC_CLIENT_ID=$(jq -r .client_id client.json)"
echo "OIDC_CLIENT_SECRET=$(jq -r .client_secret client.json)"
