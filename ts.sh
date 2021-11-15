#!/bin/bash

# convert UNIX epoch to timestamp (useful for rate limit resets)

perl -e "print scalar(localtime($1)), \"\n\""
