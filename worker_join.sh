#!/bin/sh

# Helper Script to join k0s worker to cluster

# Sleep 10 seconds to leave master to delete the previous shared token for workers
sleep 10
# Wait until the token file is available and valid
while true; do
  if [ -f /shared/join-token.env ]; then
    echo "Token file detected. Reading contents..."
    TOKEN=$(cat /shared/join-token.env | tr -d '\r\n')
    if [ -n "$TOKEN" ]; then
      echo "Valid token found!"
      echo "DEBUG: Token is: $TOKEN"
      break
    else
      echo "Token file exists but is empty. Retrying..."
    fi
  else
    echo "Waiting for token file to be created..."
  fi
  sleep 2
done

# Start the join with the retrieved token
echo "Join token available"
# exec k0s controller --no-taints --token-file "/shared/join-token.env" --enable-worker
exec k0s worker --token-file "/shared/join-token.env"
