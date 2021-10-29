#!/bin/sh
set -e
API_URL="https://cd.mouse.center:1443/go/api"
TOKEN="82615b2d8f5bf7c3b4babd5a073a7163165c21ee"

gocd() {
  curl -s -X $1 "$API_URL/$2" \
    -H "Accept: application/vnd.go.cd+json" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $TOKEN"
}

get() {
  gocd "GET" "$1"
}

delete() {
  gocd "DELETE" "$1"
}

disable_agent() {
  curl -s -X PATCH "$API_URL/agents/$1" \
    -H 'Accept: application/vnd.go.cd+json' \
    -H 'Content-Type: application/json' \
    -H "Authorization: Bearer $TOKEN" \
    -d '{
          "agent_config_state": "Disabled"
        }'
}

delete_agent() {
  disable_agent "$1"
  delete "agents/$1"
}

get_agents() {
  get "agents"
}

export API_URL
export -f delete_agent
export -f disable_agent
export -f get_agents
export -f delete
export -f get
export -f gocd

get_agents | jq  -c '._embedded.agents[] | select(.agent_state | contains("LostContact")) | .uuid' | xargs -r -n 1 bash -i -c 'delete_agent $@' _
echo "Cleanup complete."
exit 0
