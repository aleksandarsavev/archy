#!/usr/bin/env bash

DIR="$( cd "$( dirname "{BASH_SOURCE[0]}" )" && pwd )"
REMOTE="https://fonts.google.com/download?family=Ubuntu%20Mono"
UMZIP="ubuntu-mono.zip"
UNZIP_DIR="$DIR/ubuntu-temp"
SHARED_FONTS_TTF="/usr/share/fonts/TTF"

wget -O $UMZIP $REMOTE
mkdir $UNZIP_DIR
unzip $UMZIP -d $UNZIP_DIR
rm $UMZIP
cp $UNZIP_DIR/Ubuntu* $SHARED_FONTS_TTF
rm -rv $UNZIP_DIR

