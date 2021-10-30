#!/bin/sh

set -e
gocd() {
  curl -s -X $1 "$API_URL/$2" \
    -H "Authorization: Bearer $TOKEN" \
    -H "Accept: application/vnd.go.cd+json" \
    -H "Content-Type: application/json"
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
    -d '{"agent_config_state": "Disabled"}'
}

delete_agent() {
  disable_agent "$1"
  delete "agents/$1"
}

get_agents() {
  get "agents"
}

export delete_agent
export disable_agent
export get_agents
export delete
export get
export gocd
get_agents | /jq -c '._embedded.agents[] | select(.agent_state | contains("LostContact")) | .uuid' | xargs -r -n 1 bash -i -c 'delete_agent $@' _
echo "Cleanup complete."
exit 0