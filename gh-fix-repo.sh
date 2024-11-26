#!/bin/bash

# Check if at least one repository name is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 repo1 [repo2 ... repoN]"
    exit 1
fi

# Replace with your GitHub username or organization
owner="andypiper"

# Loop through each repository name passed as an argument
for repo in "$@"; do
    echo "Disabling features for $repo"

    # Disable Wiki
    gh api -X PATCH repos/$owner/$repo -f has_wiki=false --silent
    if [ $? -eq 0 ]; then
        echo "Wiki disabled for $repo"
    else
        echo "Failed to disable Wiki for $repo"
    fi

done
