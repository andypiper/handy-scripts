#!/bin/bash

# HTTP CATS ALL THE WAY DOWN
# NB this only appears to work in iTerm2 (maybe due to some clever buffering?)
# requires imgcat to be installed

if [ -z "$1" ]
  then
    echo "No argument supplied. Please provide an HTTP status code as a numerical value."
    exit 1
fi

HTTPRC=$1
curl -Ss https://http.cat/$HTTPRC.jpg | imgcat
echo https://httpstatuses.com/$HTTPRC

