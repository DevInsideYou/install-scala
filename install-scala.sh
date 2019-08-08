#!/bin/bash

if [ "$1" == "" ]; then
    VERSION="2.13.0"
else
    VERSION="$1"
fi

FILE="scala-${VERSION}.deb"

# install Scala
wget "https://scala-lang.org/files/archive/$FILE"
sudo dpkg -i $FILE

# remove debian package
rm $FILE

echo

echo '"scala" is now on the path'

# remove yourself
rm $0
