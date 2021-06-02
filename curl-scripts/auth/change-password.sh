#!/bin/bash

# TOKEN="050db44bd83c82fa3dcb648ba2a5dfdd" EMAIL="mcg@md.com" OLDPW="mcg" NEWPW="md" sh curl-scripts/auth/change-password.sh

API="http://localhost:4741"
URL_PATH="/change-password"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
