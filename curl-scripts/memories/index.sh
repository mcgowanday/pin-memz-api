#!/bin/sh

# TOKEN="a51ae3168ca1aaf5abca23c9e0aa75ab" sh curl-scripts/memories/index.sh

# TOKEN="8ec5f6bc14a7b23b7074971728921534" sh curl-scripts/memories/index.sh

API="http://localhost:4741"
URL_PATH="/memories"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
