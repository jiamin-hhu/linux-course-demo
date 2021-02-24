#!/bin/bash
#demo for redirect file to STDIN

file=$1

exec 0< $file
count=1

while read line; do
  echo "Line #$count: $line"
  let count++
done

