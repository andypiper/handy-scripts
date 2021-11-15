#!/bin/zsh

# update a directory of repos from GH
# assumes working directory contains a set of repositories
# checked out from GH e.g. using gh clone-org (an extension)

function refresh_repo() {
    REPONAME=$1
    echo -e "\033[1m$REPONAME\033[m\n"
    cd $REPONAME
    git pull
    echo "\n"
    cd ..
}

for i in `ls -d */ \.*/`;
do
    refresh_repo $i;
done

echo -e "\033[1mCOMPLETED\033[m\n"
