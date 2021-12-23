#!/bin/bash

if [ $# -ne 1 ]; then
echo "Usage: ./testmyurl file"
exit 1
fi

while read -ru 4 LINE; do
    read -r REP < <(exec curl -IsS "$LINE" 2>&1)
    if [[ "$REP" == *"resolve"* ]]; then
    echo "Not found: $LINE"
    exit 1
    fi
done 4< "$1"
