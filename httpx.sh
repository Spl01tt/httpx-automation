#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <subdomains_file>"
    exit 1
fi

INPUT="$1"

if [ ! -f "$INPUT" ]; then
    echo "Error: File '$INPUT' not found."
    exit 1
fi

echo "[*] Running httpx on: $INPUT"

httpx -l "$INPUT" \
    -sc \
    -cl \
    -location \
    -title \
    -ip \
    -td \
    -server \
    -o httpx.txt
