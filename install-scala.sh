#!/bin/bash

clear

if [ "$1" == "" ]; then
    VERSION="2.13.2"
else
    VERSION="$1"
fi

TARGET="scala-${VERSION}.deb"

URL=https://scala-lang.org/files/archive/$TARGET

# install curl
sudo apt install -yqqq curl

# download Scala
curl -L $URL -o $TARGET

# install Scala
sudo dpkg -i $TARGET

# remove debian package
rm $TARGET

echo

echo '"scala" is now on the path'

# remove yourself
rm $0
