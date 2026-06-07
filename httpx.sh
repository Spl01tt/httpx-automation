#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <subdomains_file> [output_file]"
    exit 1
fi

INPUT="$1"
OUTPUT="${2:-httpx_output.txt}"

if [ ! -f "$INPUT" ]; then
    echo "Error: File '$INPUT' not found."
    exit 1
fi

echo "[*] Running httpx on: $INPUT"
echo "[*] Output will be saved to: $OUTPUT"

httpx -l "$INPUT" \
    -sc \
    -cl \
    -location \
    -title \
    -ip \
    -td \
    -server \
    -o "$OUTPUT"

echo "[+] Done. Results saved to: $OUTPUT"
