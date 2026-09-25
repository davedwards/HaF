#!/bin/bash

# 1. Generate filename
c=1
file=$(date +"%Y_%m_%d_TEST_0"$c)

while test -e "$file"; do 
    c=$((c + 1))
    file=$(date +"%Y_%m_%d_TEST_0"$c)
done
echo "Creating test file: $file"

echo "Starting a 60-second test recording of the live stream..."

# 2. Record for just 60 seconds to verify curl and the stream connection work
STREAM_URL="https://14943.live.streamtheworld.com/KLOSFMAAC.aac"
# curl --insecure --ssl-no-revoke --max-time 60 "$STREAM_URL" -o "$file"
# Force curl to identify itself as a Chrome browser on Windows
curl --insecure --ssl-no-revoke \
  -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
  --max-time 60 "$STREAM_URL" -o "$file"

echo "Test recording complete!"
