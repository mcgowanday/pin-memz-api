#!/bin/bash

API="http://localhost:4741"
URL_PATH="/memories"

# ID=60b7edfb2dcd22e13e6c03b0 TOKEN="a51ae3168ca1aaf5abca23c9e0aa75ab" TITLE="29th Birthday Beer Taste Test" DATE=2020-4-3 LOCATION="Kenmont House" CATEGORY= PARTY= ENJOYED=true STARRED=false NOTES= OWNER="60b7d108700d11dcbd4b742e" sh curl-scripts/memories/update.sh

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "memory": {
      "title": "'"${TITLE}"'",
      "date": "'"${DATE}"'",
      "location": "'"${LOCATION}"'",
      "category": "'"${CATEGORY}"'",
      "party": "'"${PARTY}"'",
      "enjoyed": "'"${ENJOYED}"'",
      "starred": "'"${STARRED}"'",
      "notes": "'"${NOTES}"'",
      "owner": "'"${OWNER}"'"
    }
  }'

echo
