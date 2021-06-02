#!/bin/sh

API="http://localhost:4741"
URL_PATH="/examples"

# TOKEN=899feb540a513b532722816e9947136b sh curl-scripts/memories/index.sh

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
