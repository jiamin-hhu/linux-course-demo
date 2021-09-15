#!/bin/bash
# Demo for closing file

exec 3> $1
echo "This line go to file $1" >&3

exec 3>&-

echo "This does not work" >&3
