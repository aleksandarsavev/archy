#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function gitHim() {
    git pull origin master;
}

function doIt() {
    rsync --exclude ".git/" \
        --exclude "tips.md" \
        --exclude "short" \
        --exclude "install.sh" \
	--exclude "install-fonts.sh" \
	--exclude "install-packs.sh" \
        --exclude "README.md" \
        --exclude "LICENSE" \
        -avh --no-perms . ~;
    source ~/.bash_profile;
}

function echoMe() {
    echo "================================";
    echo "!                              !"
    echo "!   Archy Installer (c) 2017   !";
    echo "!                              !"
    echo "================================";
}

echoMe;
echo;
gitHim;
echo;

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
