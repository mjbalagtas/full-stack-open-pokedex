#!/bin/bash

npm run health:check > script_curl_test.log
TEST=$(cat script_curl_test.log)
CORRECT=$(cat script_curl_correct.log)
wait
if [[ "$TEST" = "$CORRECT" ]]; then
    echo "Strings are equal."
    exit 0
else
    echo "Strings are not equal."
    exit 1
fi
