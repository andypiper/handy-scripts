#!/bin/sh
#
# get an app-only auth token (Bearer Token)
# pass in consumer key and consumer secret as params
# requires: httpie and jq

while [ $# -ne 2 ]
do
    echo "usage: bearer.sh <consumer key> <consumer secret>"
    exit 1
done

TOKEN=$(http --auth "$1:$2" --form POST 'https://api.twitter.com/oauth2/token' 'grant_type=client_credentials' -b | jq .access_token | tr -d \")
echo "Bearer $TOKEN"
exit 0
