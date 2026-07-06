#!/usr/bin/env bash
# Build the site and serve it locally.
# Usage: ./preview.sh
set -e
cd "$(dirname "$0")"
ruby build.rb

# find the first free port from 4000 upward
PORT=4000
while (exec 3<>"/dev/tcp/127.0.0.1/$PORT") 2>/dev/null; do
  exec 3>&- 3<&-
  PORT=$((PORT + 1))
done

echo
echo "Serving at http://localhost:$PORT  (Ctrl+C to stop)"
cd _site
python3 -m http.server "$PORT"
