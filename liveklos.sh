#!/bin/bash

# 1. Generate the unique daily filename
c=1
file=$(date +"%Y_%m_%d_0"$c)

while test -e "$file"; do 
    echo "$file exists"
    c=$((c + 1))
    file=$(date +"%Y_%m_%d_0"$c)
done
echo "Creating new file: $file"

# 2. Wait until exactly 6:10 AM PST/PDT
# (Calculates the gap between current time and target time in seconds)
TARGET_TIME="06:10:00"
CURRENT_TIME=$(date +"%H:%M:%S")

# Convert both times to seconds since midnight to calculate the sleep duration
target_sec=$(date -d "$TARGET_TIME" +%s)
current_sec=$(date -d "$CURRENT_TIME" +%s)
sleep_duration=$((target_sec - current_sec))

# Reenable 
if [ $sleep_duration -gt 0 ]; then
    echo "Current time is $CURRENT_TIME. Waiting $sleep_duration seconds until $TARGET_TIME..."
    sleep $sleep_duration
 fi

echo "It is now 6:10 AM. Starting recording until 10:00 AM..."

# 3. Record for exactly 3 hours and 50 minutes (13,800 seconds)
STREAM_URL="https://14943.live.streamtheworld.com/KLOSFMAAC.aac"

echo "staring download..."

# Force curl to identify itself as a Chrome browser on Windows and record for 13800 seconds
# curl --insecure --ssl-no-revoke \
curl --insecure --ssl-no-revoke  --max-time 13800 "$STREAM_URL" -o "$file"
#  -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
  --max-time 13800 "$STREAM_URL" -o "$file"

echo "Recording finished at 10:00 AM."
