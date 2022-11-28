#!/bin/bash
writefile=$1
writestr=$2

if [ "$#" -ne 2 ]; then
    echo "Must specify 2 parameters."
    exit 1
fi

dirpath=${writefile%/*}

if [[ ! -d $dirpath ]]; then
    mkdir $dirpath
fi

echo $writestr > $writefile

if [ $? -gt 0 ]; then
    echo "Write to " $1 "failed."
    exit 1
fi
