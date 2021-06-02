#!/bin/bash

# API="http://localhost:4741" URL_PATH="/sign-out" TOKEN="213157cda423dc16ccd8abbb5e085f6b" sh curl-scripts/auth/sign-out.sh

API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
