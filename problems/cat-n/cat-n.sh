#!/bin/bash
set -u
if [[ $# -lt 1 ]]; then
echo "Prints Usage"
fi
i=0 
while read line; do
let i++
printf "%d %s\n" $i $line 
done<./input.txt






