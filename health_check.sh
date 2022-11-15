#!/bin/bash

apt-get update && apt-get install curl -y

OUTPUT=$(curl -L https://pokepedia.fly.dev/health)

if [ "$OUTPUT" = "ok" ]; then
    echo "Strings are equal."
    exit 0
else
    echo "Strings are not equal."
    exit 1
fi
