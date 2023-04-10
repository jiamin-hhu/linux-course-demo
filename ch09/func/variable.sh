#!/bin/bash
# using a global variable to pass a value

db1() {
  value=$[ $value * 2 ]
}

read -p "Enter a value: " value
db1
echo "The new value is: $value"
