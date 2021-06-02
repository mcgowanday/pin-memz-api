#!/bin/bash

API="http://localhost:4741"
URL_PATH="/memories"

# ID="60b7f7292dcd22e13e6c03b2" TOKEN="a51ae3168ca1aaf5abca23c9e0aa75ab" sh curl-scripts/memories/destroy.sh

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
