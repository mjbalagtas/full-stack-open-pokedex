#!/bin/bash
apt-get update && apt-get install curl -y

TEST=$(curl -s localhost:8080/health)

if [ "$TEST" = "ok" ]; then
    echo "successful curl to /health"
    exit 0
fi

echo "FAILED to curl /health"
exit 1