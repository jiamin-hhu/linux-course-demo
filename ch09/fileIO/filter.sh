#!/bin/bash

while read line; do
  echo "each line is : $line"
done < "${1:-/dev/stdin}"
