#!/bin/sh

# ID=60b9a7a318c9fdf4dd5454a8 TOKEN="a51ae3168ca1aaf5abca23c9e0aa75ab" sh curl-scripts/memories/show.sh

# Below was grabbing user ID and not TOKEN
# ID=6412180ca252ce1e2dc97772 TOKEN="640b93b9266250166ac299bb" sh curl-scripts/memories/show.sh

# ID=6412180ca252ce1e2dc97772 TOKEN="05dc245861444e7bfaa34579532a576d" sh curl-scripts/memories/show.sh


API="http://localhost:4741"
URL_PATH="/memories"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
