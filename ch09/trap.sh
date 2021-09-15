#!/bin/bash
# Testing signal trapping

trap "echo 'Trap signal SIGINT'; exit 1" SIGINT
trap "echo 'Trap when the script exit'" EXIT
count=1
while [ $count -le 10 ]; do
  echo "Loop #$count"
  sleep 1
  let count++
done

echo "The script ends"

