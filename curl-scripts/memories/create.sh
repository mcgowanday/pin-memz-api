#!/bin/bash

API="http://localhost:4741"
URL_PATH="/memories"

# TOKEN="a51ae3168ca1aaf5abca23c9e0aa75ab" TITLE="30th Birthday Dinner" DATE=2020-4-3 LOCATION="Posto" CATEGORY= PARTY= ENJOYED=false STARRED="false" NOTES= OWNER="60b7d108700d11dcbd4b742e" sh curl-scripts/memories/create.sh
# TOKEN="a51ae3168ca1aaf5abca23c9e0aa75ab" TITLE="Birthday Party" DATE=2020-4-1 LOCATION="Ashby & Robs" CATEGORY= PARTY= ENJOYED=false STARRED="false" NOTES= OWNER="60b7d108700d11dcbd4b742e" sh curl-scripts/memories/create.sh

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
