#!/bin/bash
# demo for redirect file to a file discriptor

exec 3>> $1

echo "This is displayed on the monitor"
echo "This is redirected to file" >&3
echo "This is displayed on the monitor, again"
