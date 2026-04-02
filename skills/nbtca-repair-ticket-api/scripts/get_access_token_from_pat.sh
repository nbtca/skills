#!/usr/bin/env bash
set -euo pipefail

: "${NBTCA_PAT:?NBTCA_PAT is required}"

LOGTO_ENDPOINT="${NBTCA_LOGTO_ENDPOINT:-https://auth.app.nbtca.space}"
LOGTO_APP_ID="${NBTCA_LOGTO_APP_ID:-a3tt7oyxeounfiqqugiah}"

curl -sS -X POST "${LOGTO_ENDPOINT}/oidc/token" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "client_id=${LOGTO_APP_ID}" \
  --data-urlencode "grant_type=urn:ietf:params:oauth:grant-type:token-exchange" \
  --data-urlencode "scope=openid profile email roles" \
  --data-urlencode "subject_token=${NBTCA_PAT}" \
  --data-urlencode "subject_token_type=urn:logto:token-type:personal_access_token"
