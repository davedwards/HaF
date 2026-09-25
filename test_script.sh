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
STREAM_URL="https://22973.live.streamtheworld.com/KLOSFMAAC.aac"
curl --insecure --ssl-no-revoke --max-time 60 "$STREAM_URL" -o "$file"

echo "Test recording complete!"
