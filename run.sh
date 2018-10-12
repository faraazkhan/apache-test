#!/bin/bash
_forward() {
  kill -WINCH "$child" 2>/dev/null
}

trap _forward SIGWINCH SIGKILL SIGTERM

echo "Now forwarding signals";
httpd-foreground &

child=$!
wait "$child"
