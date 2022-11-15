#!/bin/bash

npm run health:check
TEST=$(cat health.ok)
wait
if [[ "$TEST" = "ok" ]]; then
    echo "Strings are equal."
    exit 0
else
    echo "Strings are not equal."
    exit 1
fi
