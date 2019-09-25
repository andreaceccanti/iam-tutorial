#!/bin/bash
set -e

http https://iam-demo.cloud.cnaf.infn.it/register < client-reg.json > client.json
echo "OIDC_CLIENT_ID=$(jq -r .client_id client.json)"
echo "OIDC_CLIENT_SECRET=$(jq -r .client_secret client.json)"
