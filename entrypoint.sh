#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
if [ -f /rails/tmp/pids/server.pid ]; then
  echo "Removing existing server.pid..."
  rm -f /rails/tmp/pids/server.pid
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile or docker-compose.yml).
exec "$@"
