#!/bin/bash

apt-get update && apt-get install curl -y
cd app
curl -o health.ok https://pokepedia.fly.dev

TEST=$(cat health.ok)
wait
if [[ "$TEST" = "ok" ]]; then
    echo "Strings are equal."
    exit 0
else
    echo "Strings are not equal."
    exit 1
fi
