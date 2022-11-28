#!/bin/bash
filesdir=$1
searchstr=$2
if [ "$#" -ne 2 ]; then
    echo "Must specify 2 parameters."
    exit 1
fi
if [[ ! -d $1 ]]; then
    echo "Directory" $1 " does not exist."
    exit 1
fi
x=$(find $1 -type f | wc -l)
y=$(grep -Rl $2 $1 | wc -l)
echo "The number of files are" $x "and the number of matching lines are" $y 
