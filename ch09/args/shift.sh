#!/bin/bash
# Demo for shift

count=1
while [ -n "$1" ]; do
  echo "Paramter #$count = $1"
  let count++
  shift
done

