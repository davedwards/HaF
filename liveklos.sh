#!/bin/bash

# cd /mnt/c/Users/daedw/HAF

c=1
#echo $file
file=$(date +"%Y_%m_%d_0"$c)

while test -e $file; do 
    echo $file' exists'
    NUM=$[$NUM + 1]
    c=$[$c+1]
    file=$(date +"%Y_%m_%d_0"$c)
done
echo "creating new: "$file

# https://pwaimg.listenlive.co/KLOSFM_2050411
# curl --ssl-no-revoke https://23113.live.streamtheworld.com/KLOSFMAAC.aac -o $file
# curl --insecure --ssl-no-revoke https://24883.live.streamtheworld.com/KLOSFMAAC.aac -o $file
# curl --insecure --ssl-no-revoke https://23113.live.streamtheworld.com/KLOSFMAAC.aac -o $file
# curl --insecure --ssl-no-revoke https://22973.live.streamtheworld.com/KLOSFMAAC_SBM -o $file
curl --insecure --ssl-no-revoke https://22973.live.streamtheworld.com/KLOSFMAAC.aac -o $file
# curl --insecure --ssl-no-revoke https://27163.live.streamtheworld.com/KLOSFMAAC_SBM -o $file
# curl --insecure --ssl-no-revoke https://27163.live.streamtheworld.com/KLOSFMAAC.aac -o $file
# curl --ssl-no-revoke https://25053.live.streamtheworld.com/KLOSFMAAC_SBM -o $file
# curl --ssl-no-revoke http://25013.live.streamtheworld.com/KLOSHD2AAC -o $file
# curl --ssl-no-revoke http://22983.live.streamtheworld.com/KLOSHD2AAC -o $file
# curl --ssl-no-revoke http://16603.live.streamtheworld.com/KLOSHD2AAC -o $file
# curl --ssl-no-revoke https://16603.live.streamtheworld.com/KLOSHD2AAC_SBM -o $file
# curl --ssl-no-revoke -k --insecure https://16603.live.streamtheworld.com/KLOSHD2AAC_SBM -o $file
# curl --ssl-no-revoke https://16603.live.streamtheworld.com/KLOSHD2AAC -o $file
# curl --ssl-no-revoke https://22973.live.streamtheworld.com/KLOSHD2AAC -o $file
# curl -k --insecure --ssl-no-revoke https://25013.live.streamtheworld.com/KLOSFMAAC -o $file
# echo $(date +"%Y_%m_%d_0").aac
